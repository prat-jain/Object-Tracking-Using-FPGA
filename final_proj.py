#################################################################################################
# Function to swap every 4 bytes in a buffer
def swap(buf):
    buf_rearranged = bytearray(len(buf))
    for i in range(0, len(buf), 4):
        chunk = buf[i:i + 4]  # Extract 4-byte chunk
        chunk[:] = chunk[::-1]  # Reverse the entire 4-byte chunk
        buf_rearranged[i:i + 4] = chunk  # Store the modified chunk in the rearranged array
    return buf_rearranged

# Function to swap upper and lower byte of a 16 bit value passed in
def bits(value):
    # Mask to extract upper 8 bits (most significant bits)
    upper_mask = (value & 0xFF00) >> 8
    # Mask to extract lower 8 bits (least significant bits)
    lower_mask = (value & 0x00FF) << 8
    # Combine the swapped bits
    swapped_value = upper_mask | lower_mask
    if swapped_value & 0x8000:
       signed_value = -((swapped_value ^ 0xFFFF) + 1)
    else:
       signed_value = swapped_value
    return signed_value

#################################################################################################
# IMPORTS
import numpy as np
import pyvisa as visa  # You should pip install pyvisa and restart the kernel.
import matplotlib as mpl
import matplotlib.pyplot as plt
mpl.style.use('ggplot')

from PIL import Image
import cv2
import time
import threading
import sys
import os

# import various libraries necessary to run your Python code
ok_sdk_loc = "C:\\Program Files\\Opal Kelly\\FrontPanelUSB\\API\\Python\\x64"
ok_dll_loc = "C:\\Program Files\\Opal Kelly\\FrontPanelUSB\\API\\lib\\x64"
sys.path.append(ok_sdk_loc)  # add the path of the OK library
os.add_dll_directory(ok_dll_loc)

import ok  # OpalKelly library
device_lock = threading.Lock()  # For thread-safe device access

#################################################################################################
# FRONTPANEL INITIALIZATION
# Define FrontPanel device variable, open USB communication and
# load the bit file in the FPGA
dev = ok.okCFrontPanel()  # define a device for FrontPanel communication
SerialStatus = dev.OpenBySerial("")  # open USB communication with the OK board
# We will NOT load the bit file because it will be loaded using JTAG interface from Vivado
# Check if FrontPanel is initialized correctly and if the bit file is loaded.
# Otherwise terminate the program
print("----------------------------------------------------")

if SerialStatus == 0:
    print("FrontPanel host interface was successfully initialized.")
else:
    print("FrontPanel host interface not detected. The error code number is:" + str(int(SerialStatus)))
    print("Exiting the program.")
    sys.exit()


#######################################################################################
# SPI INITIALIZATION AND CONFIRMATION FOR CAMERA SENSOR

# dictionary for spi values and addresses
dic = {1:232,2:1,43:11,55:120,57:3,58:44,59:240,60:10,68:1,69:9,80:2,83:187,97:240,98:10,
       100:112,101:98,102:34,103:64,106:94,107:110,108:91,109:82,110:80,117:91}

# initializing spi registers
for i in dic:
    with device_lock:
        dev.SetWireInValue(0x01, dic[i])
        dev.UpdateWireIns()
        dev.SetWireInValue(0x02, i)
        dev.UpdateWireIns()

        SPI_Control = 3  # send a "go" signal to the SPI FSM
        dev.SetWireInValue(0x00, SPI_Control)
        dev.UpdateWireIns()  # Update the WireIns

        SPI_Control = 0  # send a "stop" signal to the FSM
        dev.SetWireInValue(0x00, SPI_Control)
        dev.UpdateWireIns()  # Update the WireIns

# reading spi registers to confirm values
# print("Reading SPI registers to confirm values:")
for i in dic:
    with device_lock:
        dev.SetWireInValue(0x02, i)
        dev.UpdateWireIns()
        SPI_Control = 1  # send a "go" signal to the FSM
        dev.SetWireInValue(0x00, SPI_Control)
        dev.UpdateWireIns()  # Update the WireIns

        SPI_Control = 0  # send a "stop" signal to the FSM
        dev.SetWireInValue(0x00, SPI_Control)
        dev.UpdateWireIns()  # Update the WireIns
        dev.UpdateWireOuts()
        z = dev.GetWireOutValue(0x20)
        # print(f"Register {i}: {z}")

#######################################################################################
# I2C/MOTOR PREPARATION SECTION
motor_control = 0  # 9

i2c_control = 0  # 4

i2c_acc_slave_address = 0x32  # 5
i2c_acc_ctrl_address = 0x20  # 6
i2c_acc_ctrl_data = 0x57  # 7
i2c_acc_some_value = 0xA8  # 8

# Initialize acceleration sensor (if needed)
with device_lock:
    # setting addresses for acceleration data collection
    dev.SetWireInValue(0x05, i2c_acc_slave_address)  # slave address
    dev.UpdateWireIns()
    dev.SetWireInValue(0x06, i2c_acc_ctrl_address)  # control register address
    dev.UpdateWireIns()
    dev.SetWireInValue(0x07, i2c_acc_ctrl_data)  # control register data
    dev.UpdateWireIns()
    dev.SetWireInValue(0x08, i2c_acc_some_value)  # x data with top bit set as 1 for auto increment
    dev.UpdateWireIns()

#################################################################################################
# FUNCTIONS FOR FRAME ACQUISITION AND ACCELERATION READING

def control_motor(direction):
    global dev, device_lock
    with device_lock:
        if direction == 'CW':
            # Set motor to rotate clockwise
            dev.SetWireInValue(0x09, 1)  # Assuming 1 means clockwise
            dev.UpdateWireIns()
            # time.sleep(0.5)
            # dev.SetWireInValue(0x09, 0)  # Assuming 0 stops the motor
            # dev.UpdateWireIns()
        elif direction == 'CCW':
            # Set motor to rotate counter-clockwise
            dev.SetWireInValue(0x09, 3)  # Assuming 3 means counter-clockwise
            dev.UpdateWireIns()
            # time.sleep(0.5)
            # dev.SetWireInValue(0x09, 0)  # Assuming 0 stops the motor
            # dev.UpdateWireIns()
        elif direction == 'STOP':
            # Stop the motor
            dev.SetWireInValue(0x09, 0)  # Assuming 0 stops the motor
            dev.UpdateWireIns()
            # time.sleep(0.5)
        else:
            # Default action
            dev.SetWireInValue(0x09, 0)
            dev.UpdateWireIns()
            # time.sleep(0.5)

def frame_acquisition():
    global dev, device_lock
    width, height = 648, 484  
    buf = bytearray(314368)
    buf2 = bytearray(height * width)
    
    # Threshold for bright spots
    brightness_threshold = 20  # Adjust based on your flashlight brightness
    
    # Define thirds of the frame
    left_third = width // 3
    right_third = (width * 2) // 3
    
    # Position smoothing
    position_history = []
    history_size = 10  # Number of past positions to average
    
    # Start time for FPS calculation
    start_time = time.time()
    frame_count = 0
    
    while True:
        # Acquire frame
        with device_lock:
            dev.ActivateTriggerIn(0x40, 0)
            dev.ReadFromBlockPipeOut(0xa0, 1024, buf)
        
        # Process buffer into frame
        buf2 = buf[0:height * width]
        image = np.frombuffer(buf2, dtype=np.uint8)
        reshaped_array = image.reshape(int(len(buf2) / 4), 4)
        reversed_array = np.flip(reshaped_array, axis=1)
        result_array = reversed_array.flatten()
        frame = np.reshape(result_array, (height, width))
        
        motor_direction = 'No Movement'
        
        # Threshold to find bright spots (flashlight)
        _, thresh = cv2.threshold(frame, brightness_threshold, 255, cv2.THRESH_BINARY)
        
        # Find coordinates of bright pixels
        y_coords, x_coords = np.nonzero(thresh)
        
        if len(x_coords) > 0:
            # Calculate center of mass of bright region
            # Weight pixels by their intensity for more accurate center
            intensities = frame[y_coords, x_coords]
            x_center = int(np.average(x_coords, weights=intensities))
            y_center = int(np.average(y_coords, weights=intensities))
            
            # Add to position history
            position_history.append((x_center, y_center))
            if len(position_history) > history_size:
                position_history.pop(0)
            
            # Calculate smoothed position
            if len(position_history) > 0:
                # Use exponential moving average for smooth tracking
                smoothed_x = int(sum([pos[0] * (0.8 ** i) for i, pos in enumerate(reversed(position_history))]) / 
                               sum([0.8 ** i for i in range(len(position_history))]))
                smoothed_y = int(sum([pos[1] * (0.8 ** i) for i, pos in enumerate(reversed(position_history))]) / 
                               sum([0.8 ** i for i in range(len(position_history))]))
                
                # Draw tracking point
                cv2.circle(frame, (smoothed_x, smoothed_y), 5, (255), -1)
                
                # Determine motor direction based on smoothed position
                if smoothed_x < left_third:
                    motor_direction = 'Counter Clockwise'
                    control_motor('CCW')
                elif smoothed_x > right_third:
                    motor_direction = 'Clockwise'
                    control_motor('CW')
                else:
                    motor_direction = 'Centered'
                    control_motor('STOP')
        
        # Draw frame divisions
        cv2.line(frame, (left_third, 0), (left_third, height), (128), 1)
        cv2.line(frame, (right_third, 0), (right_third, height), (128), 1)
        
        # Calculate and display FPS
        frame_count += 1
        elapsed_time = time.time() - start_time
        fps = frame_count / elapsed_time
        
        # Display information
        cv2.putText(frame, f"Motor Direction: {motor_direction}", (10, 30),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.7, (255), 2)
        cv2.putText(frame, f"FPS: {fps:.2f}", (10, 50),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.7, (255), 2)
        
        # Display the frame
        cv2.imshow('Frame', frame)
        
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
    
    cv2.destroyAllWindows()





def read_acceleration():
    global dev, device_lock
    # Function to read acceleration data at 100 samples per second
    sample_interval = 1 / 100  # 100 samples per second
    while True:
        start_time = time.time()
        
        # Read acceleration data
        with device_lock:
            # setting addresses for acceleration data collection
            dev.SetWireInValue(0x05, i2c_acc_slave_address)  # slave address
            dev.UpdateWireIns()
            dev.SetWireInValue(0x06, i2c_acc_ctrl_address)  # control register address
            dev.UpdateWireIns()
            dev.SetWireInValue(0x07, i2c_acc_ctrl_data)  # control register data
            dev.UpdateWireIns()
            dev.SetWireInValue(0x08, i2c_acc_some_value)  # x data with top bit set as 1 for auto increment
            dev.UpdateWireIns()
            
            i2c_control = 1  # send a "go" signal to the FSM
            dev.SetWireInValue(0x04, i2c_control)
            dev.UpdateWireIns()  # Update the WireIns
                
            time.sleep(0.005)  # Wait for 5ms, adjust as needed
                
            i2c_control = 0  # send a "stop" signal to the FSM
            dev.SetWireInValue(0x04, i2c_control)
            dev.UpdateWireIns()  # Update the WireIns
                
            dev.UpdateWireOuts()

            x = dev.GetWireOutValue(0x21)
            y = dev.GetWireOutValue(0x22)
            z = dev.GetWireOutValue(0x23)

        x_acc = bits(x)/16200.5333333*9.8
        y_acc = bits(y)/16142.93333333*9.8
        z_acc = bits(z)/16200.5333333*9.8

        # Display the acceleration data
        print(f"Acceleration: X={x_acc:.2f} m/s^2, Y={y_acc:.2f} m/s^2, Z={z_acc:.2f} m/s^2")

        # Wait until next sample time
        elapsed_time = time.time() - start_time
        time_to_wait = sample_interval - elapsed_time
        if time_to_wait > 0:
            time.sleep(time_to_wait)

################################################################################################# 
# START THREADS FOR FRAME ACQUISITION AND ACCELERATION READING

# Start threads
dev.SetWireInValue(0x10, 50)
dev.UpdateWireIns()

frame_thread = threading.Thread(target=frame_acquisition)
acc_thread = threading.Thread(target=read_acceleration)

frame_thread.start()
acc_thread.start()

# Wait for threads to finish (they won't unless interrupted)
try:
    while True:
        time.sleep(1)
except KeyboardInterrupt:
    print("Program interrupted by user.")

# Clean up
# power_supply.write("OUTPUT OFF")
# power_supply.close()
dev.Close()
print("Program terminated.")