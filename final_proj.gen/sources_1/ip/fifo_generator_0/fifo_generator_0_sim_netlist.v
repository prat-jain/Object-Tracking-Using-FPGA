// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov 22 21:47:04 2024
// Host        : ECEB-4022-02 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {u:/Desktop/ECE 437
//               Labs/final_proj/final_proj.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v}
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    prog_full);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  input wr_rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  input rd_rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;

  wire [7:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "10" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_0_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(rd_rst),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(wr_rst),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 114112)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
