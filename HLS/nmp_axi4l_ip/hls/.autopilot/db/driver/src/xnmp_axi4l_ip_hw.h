// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of awaddr
//        bit 7~0 - awaddr[7:0] (Read/Write)
//        others  - reserved
// 0x14 : reserved
// 0x18 : Data signal of awvalid
//        bit 0  - awvalid[0] (Read/Write)
//        others - reserved
// 0x1c : reserved
// 0x20 : Data signal of awready_i
//        bit 0  - awready_i[0] (Read/Write)
//        others - reserved
// 0x24 : reserved
// 0x28 : Data signal of awready_o
//        bit 0  - awready_o[0] (Read)
//        others - reserved
// 0x2c : Control signal of awready_o
//        bit 0  - awready_o_ap_vld (Read/COR)
//        others - reserved
// 0x30 : Data signal of wdata
//        bit 31~0 - wdata[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of wvalid
//        bit 0  - wvalid[0] (Read/Write)
//        others - reserved
// 0x3c : reserved
// 0x40 : Data signal of wready_i
//        bit 0  - wready_i[0] (Read/Write)
//        others - reserved
// 0x44 : reserved
// 0x48 : Data signal of wready_o
//        bit 0  - wready_o[0] (Read)
//        others - reserved
// 0x4c : Control signal of wready_o
//        bit 0  - wready_o_ap_vld (Read/COR)
//        others - reserved
// 0x50 : Data signal of bvalid_i
//        bit 0  - bvalid_i[0] (Read/Write)
//        others - reserved
// 0x54 : reserved
// 0x58 : Data signal of bvalid_o
//        bit 0  - bvalid_o[0] (Read)
//        others - reserved
// 0x5c : Control signal of bvalid_o
//        bit 0  - bvalid_o_ap_vld (Read/COR)
//        others - reserved
// 0x60 : Data signal of bready
//        bit 0  - bready[0] (Read/Write)
//        others - reserved
// 0x64 : reserved
// 0x68 : Data signal of araddr
//        bit 7~0 - araddr[7:0] (Read/Write)
//        others  - reserved
// 0x6c : reserved
// 0x70 : Data signal of arvalid
//        bit 0  - arvalid[0] (Read/Write)
//        others - reserved
// 0x74 : reserved
// 0x78 : Data signal of arready_i
//        bit 0  - arready_i[0] (Read/Write)
//        others - reserved
// 0x7c : reserved
// 0x80 : Data signal of arready_o
//        bit 0  - arready_o[0] (Read)
//        others - reserved
// 0x84 : Control signal of arready_o
//        bit 0  - arready_o_ap_vld (Read/COR)
//        others - reserved
// 0x88 : Data signal of rdata
//        bit 31~0 - rdata[31:0] (Read)
// 0x8c : Control signal of rdata
//        bit 0  - rdata_ap_vld (Read/COR)
//        others - reserved
// 0x98 : Data signal of rvalid_i
//        bit 0  - rvalid_i[0] (Read/Write)
//        others - reserved
// 0x9c : reserved
// 0xa0 : Data signal of rvalid_o
//        bit 0  - rvalid_o[0] (Read)
//        others - reserved
// 0xa4 : Control signal of rvalid_o
//        bit 0  - rvalid_o_ap_vld (Read/COR)
//        others - reserved
// 0xa8 : Data signal of rready
//        bit 0  - rready[0] (Read/Write)
//        others - reserved
// 0xac : reserved
// 0xb8 : Data signal of rst_n
//        bit 0  - rst_n[0] (Read/Write)
//        others - reserved
// 0xbc : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XNMP_AXI4L_IP_CONTROL_ADDR_AWADDR_DATA    0x10
#define XNMP_AXI4L_IP_CONTROL_BITS_AWADDR_DATA    8
#define XNMP_AXI4L_IP_CONTROL_ADDR_AWVALID_DATA   0x18
#define XNMP_AXI4L_IP_CONTROL_BITS_AWVALID_DATA   1
#define XNMP_AXI4L_IP_CONTROL_ADDR_AWREADY_I_DATA 0x20
#define XNMP_AXI4L_IP_CONTROL_BITS_AWREADY_I_DATA 1
#define XNMP_AXI4L_IP_CONTROL_ADDR_AWREADY_O_DATA 0x28
#define XNMP_AXI4L_IP_CONTROL_BITS_AWREADY_O_DATA 1
#define XNMP_AXI4L_IP_CONTROL_ADDR_AWREADY_O_CTRL 0x2c
#define XNMP_AXI4L_IP_CONTROL_ADDR_WDATA_DATA     0x30
#define XNMP_AXI4L_IP_CONTROL_BITS_WDATA_DATA     32
#define XNMP_AXI4L_IP_CONTROL_ADDR_WVALID_DATA    0x38
#define XNMP_AXI4L_IP_CONTROL_BITS_WVALID_DATA    1
#define XNMP_AXI4L_IP_CONTROL_ADDR_WREADY_I_DATA  0x40
#define XNMP_AXI4L_IP_CONTROL_BITS_WREADY_I_DATA  1
#define XNMP_AXI4L_IP_CONTROL_ADDR_WREADY_O_DATA  0x48
#define XNMP_AXI4L_IP_CONTROL_BITS_WREADY_O_DATA  1
#define XNMP_AXI4L_IP_CONTROL_ADDR_WREADY_O_CTRL  0x4c
#define XNMP_AXI4L_IP_CONTROL_ADDR_BVALID_I_DATA  0x50
#define XNMP_AXI4L_IP_CONTROL_BITS_BVALID_I_DATA  1
#define XNMP_AXI4L_IP_CONTROL_ADDR_BVALID_O_DATA  0x58
#define XNMP_AXI4L_IP_CONTROL_BITS_BVALID_O_DATA  1
#define XNMP_AXI4L_IP_CONTROL_ADDR_BVALID_O_CTRL  0x5c
#define XNMP_AXI4L_IP_CONTROL_ADDR_BREADY_DATA    0x60
#define XNMP_AXI4L_IP_CONTROL_BITS_BREADY_DATA    1
#define XNMP_AXI4L_IP_CONTROL_ADDR_ARADDR_DATA    0x68
#define XNMP_AXI4L_IP_CONTROL_BITS_ARADDR_DATA    8
#define XNMP_AXI4L_IP_CONTROL_ADDR_ARVALID_DATA   0x70
#define XNMP_AXI4L_IP_CONTROL_BITS_ARVALID_DATA   1
#define XNMP_AXI4L_IP_CONTROL_ADDR_ARREADY_I_DATA 0x78
#define XNMP_AXI4L_IP_CONTROL_BITS_ARREADY_I_DATA 1
#define XNMP_AXI4L_IP_CONTROL_ADDR_ARREADY_O_DATA 0x80
#define XNMP_AXI4L_IP_CONTROL_BITS_ARREADY_O_DATA 1
#define XNMP_AXI4L_IP_CONTROL_ADDR_ARREADY_O_CTRL 0x84
#define XNMP_AXI4L_IP_CONTROL_ADDR_RDATA_DATA     0x88
#define XNMP_AXI4L_IP_CONTROL_BITS_RDATA_DATA     32
#define XNMP_AXI4L_IP_CONTROL_ADDR_RDATA_CTRL     0x8c
#define XNMP_AXI4L_IP_CONTROL_ADDR_RVALID_I_DATA  0x98
#define XNMP_AXI4L_IP_CONTROL_BITS_RVALID_I_DATA  1
#define XNMP_AXI4L_IP_CONTROL_ADDR_RVALID_O_DATA  0xa0
#define XNMP_AXI4L_IP_CONTROL_BITS_RVALID_O_DATA  1
#define XNMP_AXI4L_IP_CONTROL_ADDR_RVALID_O_CTRL  0xa4
#define XNMP_AXI4L_IP_CONTROL_ADDR_RREADY_DATA    0xa8
#define XNMP_AXI4L_IP_CONTROL_BITS_RREADY_DATA    1
#define XNMP_AXI4L_IP_CONTROL_ADDR_RST_N_DATA     0xb8
#define XNMP_AXI4L_IP_CONTROL_BITS_RST_N_DATA     1

