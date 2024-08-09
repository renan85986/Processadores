// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module nmp_axi4l_ip_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    input  wire                          clk,
    input  wire                          rst,
    output wire [7:0]                    awaddr,
    output wire [0:0]                    awvalid,
    output wire [0:0]                    awready_i,
    input  wire [0:0]                    awready_o,
    input  wire                          awready_o_ap_vld,
    output wire [31:0]                   wdata,
    output wire [0:0]                    wvalid,
    output wire [0:0]                    wready_i,
    input  wire [0:0]                    wready_o,
    input  wire                          wready_o_ap_vld,
    output wire [0:0]                    bvalid_i,
    input  wire [0:0]                    bvalid_o,
    input  wire                          bvalid_o_ap_vld,
    output wire [7:0]                    araddr,
    output wire [0:0]                    arvalid,
    output wire [0:0]                    arready_i,
    input  wire [0:0]                    arready_o,
    input  wire                          arready_o_ap_vld,
    input  wire [31:0]                   rdata,
    input  wire                          rdata_ap_vld,
    output wire [0:0]                    rvalid_i,
    input  wire [0:0]                    rvalid_o,
    input  wire                          rvalid_o_ap_vld,
    output wire [0:0]                    rst_n
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_none
//
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
// 0x60 : Data signal of araddr
//        bit 7~0 - araddr[7:0] (Read/Write)
//        others  - reserved
// 0x64 : reserved
// 0x68 : Data signal of arvalid
//        bit 0  - arvalid[0] (Read/Write)
//        others - reserved
// 0x6c : reserved
// 0x70 : Data signal of arready_i
//        bit 0  - arready_i[0] (Read/Write)
//        others - reserved
// 0x74 : reserved
// 0x78 : Data signal of arready_o
//        bit 0  - arready_o[0] (Read)
//        others - reserved
// 0x7c : Control signal of arready_o
//        bit 0  - arready_o_ap_vld (Read/COR)
//        others - reserved
// 0x80 : Data signal of rdata
//        bit 31~0 - rdata[31:0] (Read)
// 0x84 : Control signal of rdata
//        bit 0  - rdata_ap_vld (Read/COR)
//        others - reserved
// 0x90 : Data signal of rvalid_i
//        bit 0  - rvalid_i[0] (Read/Write)
//        others - reserved
// 0x94 : reserved
// 0x98 : Data signal of rvalid_o
//        bit 0  - rvalid_o[0] (Read)
//        others - reserved
// 0x9c : Control signal of rvalid_o
//        bit 0  - rvalid_o_ap_vld (Read/COR)
//        others - reserved
// 0xa8 : Data signal of rst_n
//        bit 0  - rst_n[0] (Read/Write)
//        others - reserved
// 0xac : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AWADDR_DATA_0    = 8'h10,
    ADDR_AWADDR_CTRL      = 8'h14,
    ADDR_AWVALID_DATA_0   = 8'h18,
    ADDR_AWVALID_CTRL     = 8'h1c,
    ADDR_AWREADY_I_DATA_0 = 8'h20,
    ADDR_AWREADY_I_CTRL   = 8'h24,
    ADDR_AWREADY_O_DATA_0 = 8'h28,
    ADDR_AWREADY_O_CTRL   = 8'h2c,
    ADDR_WDATA_DATA_0     = 8'h30,
    ADDR_WDATA_CTRL       = 8'h34,
    ADDR_WVALID_DATA_0    = 8'h38,
    ADDR_WVALID_CTRL      = 8'h3c,
    ADDR_WREADY_I_DATA_0  = 8'h40,
    ADDR_WREADY_I_CTRL    = 8'h44,
    ADDR_WREADY_O_DATA_0  = 8'h48,
    ADDR_WREADY_O_CTRL    = 8'h4c,
    ADDR_BVALID_I_DATA_0  = 8'h50,
    ADDR_BVALID_I_CTRL    = 8'h54,
    ADDR_BVALID_O_DATA_0  = 8'h58,
    ADDR_BVALID_O_CTRL    = 8'h5c,
    ADDR_ARADDR_DATA_0    = 8'h60,
    ADDR_ARADDR_CTRL      = 8'h64,
    ADDR_ARVALID_DATA_0   = 8'h68,
    ADDR_ARVALID_CTRL     = 8'h6c,
    ADDR_ARREADY_I_DATA_0 = 8'h70,
    ADDR_ARREADY_I_CTRL   = 8'h74,
    ADDR_ARREADY_O_DATA_0 = 8'h78,
    ADDR_ARREADY_O_CTRL   = 8'h7c,
    ADDR_RDATA_DATA_0     = 8'h80,
    ADDR_RDATA_CTRL       = 8'h84,
    ADDR_RVALID_I_DATA_0  = 8'h90,
    ADDR_RVALID_I_CTRL    = 8'h94,
    ADDR_RVALID_O_DATA_0  = 8'h98,
    ADDR_RVALID_O_CTRL    = 8'h9c,
    ADDR_RST_N_DATA_0     = 8'ha8,
    ADDR_RST_N_CTRL       = 8'hac,
    WRIDLE                = 2'd0,
    WRDATA                = 2'd1,
    WRRESP                = 2'd2,
    WRRESET               = 2'd3,
    RDIDLE                = 2'd0,
    RDDATA                = 2'd1,
    RDRESET               = 2'd2,
    ADDR_BITS                = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [7:0]                    int_awaddr = 'b0;
    reg  [7:0]                    awaddr_set = 'b0;
    reg  [0:0]                    int_awvalid = 'b0;
    reg  [0:0]                    awvalid_set = 'b0;
    reg  [0:0]                    int_awready_i = 'b0;
    reg  [0:0]                    awready_i_set = 'b0;
    reg                           int_awready_o_ap_vld;
    reg  [0:0]                    int_awready_o = 'b0;
    reg  [0:0]                    awready_o_get = 'b0;
    reg                           awready_o_vld_ext = 1'b0;
    reg                           awready_o_vld_get = 1'b0;
    reg  [31:0]                   int_wdata = 'b0;
    reg  [31:0]                   wdata_set = 'b0;
    reg  [0:0]                    int_wvalid = 'b0;
    reg  [0:0]                    wvalid_set = 'b0;
    reg  [0:0]                    int_wready_i = 'b0;
    reg  [0:0]                    wready_i_set = 'b0;
    reg                           int_wready_o_ap_vld;
    reg  [0:0]                    int_wready_o = 'b0;
    reg  [0:0]                    wready_o_get = 'b0;
    reg                           wready_o_vld_ext = 1'b0;
    reg                           wready_o_vld_get = 1'b0;
    reg  [0:0]                    int_bvalid_i = 'b0;
    reg  [0:0]                    bvalid_i_set = 'b0;
    reg                           int_bvalid_o_ap_vld;
    reg  [0:0]                    int_bvalid_o = 'b0;
    reg  [0:0]                    bvalid_o_get = 'b0;
    reg                           bvalid_o_vld_ext = 1'b0;
    reg                           bvalid_o_vld_get = 1'b0;
    reg  [7:0]                    int_araddr = 'b0;
    reg  [7:0]                    araddr_set = 'b0;
    reg  [0:0]                    int_arvalid = 'b0;
    reg  [0:0]                    arvalid_set = 'b0;
    reg  [0:0]                    int_arready_i = 'b0;
    reg  [0:0]                    arready_i_set = 'b0;
    reg                           int_arready_o_ap_vld;
    reg  [0:0]                    int_arready_o = 'b0;
    reg  [0:0]                    arready_o_get = 'b0;
    reg                           arready_o_vld_ext = 1'b0;
    reg                           arready_o_vld_get = 1'b0;
    reg                           int_rdata_ap_vld;
    reg  [31:0]                   int_rdata = 'b0;
    reg  [31:0]                   rdata_get = 'b0;
    reg                           rdata_vld_ext = 1'b0;
    reg                           rdata_vld_get = 1'b0;
    reg  [0:0]                    int_rvalid_i = 'b0;
    reg  [0:0]                    rvalid_i_set = 'b0;
    reg                           int_rvalid_o_ap_vld;
    reg  [0:0]                    int_rvalid_o = 'b0;
    reg  [0:0]                    rvalid_o_get = 'b0;
    reg                           rvalid_o_vld_ext = 1'b0;
    reg                           rvalid_o_vld_get = 1'b0;
    reg  [0:0]                    int_rst_n = 'b0;
    reg  [0:0]                    rst_n_set = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= {AWADDR[ADDR_BITS-1:2], {2{1'b0}}};
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AWADDR_DATA_0: begin
                    rdata <= awaddr_set[7:0];
                end
                ADDR_AWVALID_DATA_0: begin
                    rdata <= awvalid_set[0:0];
                end
                ADDR_AWREADY_I_DATA_0: begin
                    rdata <= awready_i_set[0:0];
                end
                ADDR_AWREADY_O_DATA_0: begin
                    rdata <= awready_o_get[0:0];
                end
                ADDR_AWREADY_O_CTRL: begin
                    rdata[0] <= awready_o_vld_get;
                end
                ADDR_WDATA_DATA_0: begin
                    rdata <= wdata_set[31:0];
                end
                ADDR_WVALID_DATA_0: begin
                    rdata <= wvalid_set[0:0];
                end
                ADDR_WREADY_I_DATA_0: begin
                    rdata <= wready_i_set[0:0];
                end
                ADDR_WREADY_O_DATA_0: begin
                    rdata <= wready_o_get[0:0];
                end
                ADDR_WREADY_O_CTRL: begin
                    rdata[0] <= wready_o_vld_get;
                end
                ADDR_BVALID_I_DATA_0: begin
                    rdata <= bvalid_i_set[0:0];
                end
                ADDR_BVALID_O_DATA_0: begin
                    rdata <= bvalid_o_get[0:0];
                end
                ADDR_BVALID_O_CTRL: begin
                    rdata[0] <= bvalid_o_vld_get;
                end
                ADDR_ARADDR_DATA_0: begin
                    rdata <= araddr_set[7:0];
                end
                ADDR_ARVALID_DATA_0: begin
                    rdata <= arvalid_set[0:0];
                end
                ADDR_ARREADY_I_DATA_0: begin
                    rdata <= arready_i_set[0:0];
                end
                ADDR_ARREADY_O_DATA_0: begin
                    rdata <= arready_o_get[0:0];
                end
                ADDR_ARREADY_O_CTRL: begin
                    rdata[0] <= arready_o_vld_get;
                end
                ADDR_RDATA_DATA_0: begin
                    rdata <= rdata_get[31:0];
                end
                ADDR_RDATA_CTRL: begin
                    rdata[0] <= rdata_vld_get;
                end
                ADDR_RVALID_I_DATA_0: begin
                    rdata <= rvalid_i_set[0:0];
                end
                ADDR_RVALID_O_DATA_0: begin
                    rdata <= rvalid_o_get[0:0];
                end
                ADDR_RVALID_O_CTRL: begin
                    rdata[0] <= rvalid_o_vld_get;
                end
                ADDR_RST_N_DATA_0: begin
                    rdata <= rst_n_set[0:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign awaddr    = int_awaddr;
assign awvalid   = int_awvalid;
assign awready_i = int_awready_i;
assign wdata     = int_wdata;
assign wvalid    = int_wvalid;
assign wready_i  = int_wready_i;
assign bvalid_i  = int_bvalid_i;
assign araddr    = int_araddr;
assign arvalid   = int_arvalid;
assign arready_i = int_arready_i;
assign rvalid_i  = int_rvalid_i;
assign rst_n     = int_rst_n;
// awaddr_set[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        awaddr_set[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AWADDR_DATA_0)
            awaddr_set[7:0] <= (WDATA[31:0] & wmask) | (awaddr_set[7:0] & ~wmask);
    end
end

// awvalid_set[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        awvalid_set[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AWVALID_DATA_0)
            awvalid_set[0:0] <= (WDATA[31:0] & wmask) | (awvalid_set[0:0] & ~wmask);
    end
end

// awready_i_set[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        awready_i_set[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AWREADY_I_DATA_0)
            awready_i_set[0:0] <= (WDATA[31:0] & wmask) | (awready_i_set[0:0] & ~wmask);
    end
end

// awready_o_get
always @(posedge ACLK) begin
    if (ARESET)
        awready_o_get <= 0;
    else if (ACLK_EN) begin
            awready_o_get <= int_awready_o;
    end
end

// awready_o_vld_get
always @(posedge ACLK) begin
    if (ARESET)
        awready_o_vld_get <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr == ADDR_AWREADY_O_CTRL)
            awready_o_vld_get <= 1'b0; // clear on read
        else if (int_awready_o_ap_vld)
            awready_o_vld_get <= 1'b1;
    end
end

// wdata_set[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        wdata_set[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WDATA_DATA_0)
            wdata_set[31:0] <= (WDATA[31:0] & wmask) | (wdata_set[31:0] & ~wmask);
    end
end

// wvalid_set[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        wvalid_set[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WVALID_DATA_0)
            wvalid_set[0:0] <= (WDATA[31:0] & wmask) | (wvalid_set[0:0] & ~wmask);
    end
end

// wready_i_set[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        wready_i_set[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WREADY_I_DATA_0)
            wready_i_set[0:0] <= (WDATA[31:0] & wmask) | (wready_i_set[0:0] & ~wmask);
    end
end

// wready_o_get
always @(posedge ACLK) begin
    if (ARESET)
        wready_o_get <= 0;
    else if (ACLK_EN) begin
            wready_o_get <= int_wready_o;
    end
end

// wready_o_vld_get
always @(posedge ACLK) begin
    if (ARESET)
        wready_o_vld_get <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr == ADDR_WREADY_O_CTRL)
            wready_o_vld_get <= 1'b0; // clear on read
        else if (int_wready_o_ap_vld)
            wready_o_vld_get <= 1'b1;
    end
end

// bvalid_i_set[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        bvalid_i_set[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BVALID_I_DATA_0)
            bvalid_i_set[0:0] <= (WDATA[31:0] & wmask) | (bvalid_i_set[0:0] & ~wmask);
    end
end

// bvalid_o_get
always @(posedge ACLK) begin
    if (ARESET)
        bvalid_o_get <= 0;
    else if (ACLK_EN) begin
            bvalid_o_get <= int_bvalid_o;
    end
end

// bvalid_o_vld_get
always @(posedge ACLK) begin
    if (ARESET)
        bvalid_o_vld_get <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr == ADDR_BVALID_O_CTRL)
            bvalid_o_vld_get <= 1'b0; // clear on read
        else if (int_bvalid_o_ap_vld)
            bvalid_o_vld_get <= 1'b1;
    end
end

// araddr_set[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        araddr_set[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ARADDR_DATA_0)
            araddr_set[7:0] <= (WDATA[31:0] & wmask) | (araddr_set[7:0] & ~wmask);
    end
end

// arvalid_set[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        arvalid_set[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ARVALID_DATA_0)
            arvalid_set[0:0] <= (WDATA[31:0] & wmask) | (arvalid_set[0:0] & ~wmask);
    end
end

// arready_i_set[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        arready_i_set[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ARREADY_I_DATA_0)
            arready_i_set[0:0] <= (WDATA[31:0] & wmask) | (arready_i_set[0:0] & ~wmask);
    end
end

// arready_o_get
always @(posedge ACLK) begin
    if (ARESET)
        arready_o_get <= 0;
    else if (ACLK_EN) begin
            arready_o_get <= int_arready_o;
    end
end

// arready_o_vld_get
always @(posedge ACLK) begin
    if (ARESET)
        arready_o_vld_get <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr == ADDR_ARREADY_O_CTRL)
            arready_o_vld_get <= 1'b0; // clear on read
        else if (int_arready_o_ap_vld)
            arready_o_vld_get <= 1'b1;
    end
end

// rdata_get
always @(posedge ACLK) begin
    if (ARESET)
        rdata_get <= 0;
    else if (ACLK_EN) begin
            rdata_get <= int_rdata;
    end
end

// rdata_vld_get
always @(posedge ACLK) begin
    if (ARESET)
        rdata_vld_get <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr == ADDR_RDATA_CTRL)
            rdata_vld_get <= 1'b0; // clear on read
        else if (int_rdata_ap_vld)
            rdata_vld_get <= 1'b1;
    end
end

// rvalid_i_set[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        rvalid_i_set[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RVALID_I_DATA_0)
            rvalid_i_set[0:0] <= (WDATA[31:0] & wmask) | (rvalid_i_set[0:0] & ~wmask);
    end
end

// rvalid_o_get
always @(posedge ACLK) begin
    if (ARESET)
        rvalid_o_get <= 0;
    else if (ACLK_EN) begin
            rvalid_o_get <= int_rvalid_o;
    end
end

// rvalid_o_vld_get
always @(posedge ACLK) begin
    if (ARESET)
        rvalid_o_vld_get <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr == ADDR_RVALID_O_CTRL)
            rvalid_o_vld_get <= 1'b0; // clear on read
        else if (int_rvalid_o_ap_vld)
            rvalid_o_vld_get <= 1'b1;
    end
end

// rst_n_set[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        rst_n_set[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RST_N_DATA_0)
            rst_n_set[0:0] <= (WDATA[31:0] & wmask) | (rst_n_set[0:0] & ~wmask);
    end
end

// int_awaddr[7:0]
always @(posedge clk) begin
    if (rst)
        int_awaddr[7:0] <= 0;
    else
        int_awaddr[7:0] <= awaddr_set[7:0];
end
// int_awvalid[0:0]
always @(posedge clk) begin
    if (rst)
        int_awvalid[0:0] <= 0;
    else
        int_awvalid[0:0] <= awvalid_set[0:0];
end
// int_awready_i[0:0]
always @(posedge clk) begin
    if (rst)
        int_awready_i[0:0] <= 0;
    else
        int_awready_i[0:0] <= awready_i_set[0:0];
end
// int_awready_o
always @(posedge clk) begin
    if (rst)
        int_awready_o <= 0;
    else if (awready_o_ap_vld)
        int_awready_o <= awready_o;
end
// awready_o_vld_ext
always @(posedge clk) begin
    if (rst)
        awready_o_vld_ext <= 1'b0;
    else
        awready_o_vld_ext <= awready_o_vld_get;
end
// int_awready_o_ap_vld
always @(posedge clk) begin
    if (rst)
        int_awready_o_ap_vld <= 1'b0;
    else if (awready_o_ap_vld)
        int_awready_o_ap_vld <= 1'b1;
    else if (awready_o_vld_get == 1'b0 && awready_o_vld_ext == 1'b1)
        int_awready_o_ap_vld <= 1'b0; // clear on read
end
// int_wdata[31:0]
always @(posedge clk) begin
    if (rst)
        int_wdata[31:0] <= 0;
    else
        int_wdata[31:0] <= wdata_set[31:0];
end
// int_wvalid[0:0]
always @(posedge clk) begin
    if (rst)
        int_wvalid[0:0] <= 0;
    else
        int_wvalid[0:0] <= wvalid_set[0:0];
end
// int_wready_i[0:0]
always @(posedge clk) begin
    if (rst)
        int_wready_i[0:0] <= 0;
    else
        int_wready_i[0:0] <= wready_i_set[0:0];
end
// int_wready_o
always @(posedge clk) begin
    if (rst)
        int_wready_o <= 0;
    else if (wready_o_ap_vld)
        int_wready_o <= wready_o;
end
// wready_o_vld_ext
always @(posedge clk) begin
    if (rst)
        wready_o_vld_ext <= 1'b0;
    else
        wready_o_vld_ext <= wready_o_vld_get;
end
// int_wready_o_ap_vld
always @(posedge clk) begin
    if (rst)
        int_wready_o_ap_vld <= 1'b0;
    else if (wready_o_ap_vld)
        int_wready_o_ap_vld <= 1'b1;
    else if (wready_o_vld_get == 1'b0 && wready_o_vld_ext == 1'b1)
        int_wready_o_ap_vld <= 1'b0; // clear on read
end
// int_bvalid_i[0:0]
always @(posedge clk) begin
    if (rst)
        int_bvalid_i[0:0] <= 0;
    else
        int_bvalid_i[0:0] <= bvalid_i_set[0:0];
end
// int_bvalid_o
always @(posedge clk) begin
    if (rst)
        int_bvalid_o <= 0;
    else if (bvalid_o_ap_vld)
        int_bvalid_o <= bvalid_o;
end
// bvalid_o_vld_ext
always @(posedge clk) begin
    if (rst)
        bvalid_o_vld_ext <= 1'b0;
    else
        bvalid_o_vld_ext <= bvalid_o_vld_get;
end
// int_bvalid_o_ap_vld
always @(posedge clk) begin
    if (rst)
        int_bvalid_o_ap_vld <= 1'b0;
    else if (bvalid_o_ap_vld)
        int_bvalid_o_ap_vld <= 1'b1;
    else if (bvalid_o_vld_get == 1'b0 && bvalid_o_vld_ext == 1'b1)
        int_bvalid_o_ap_vld <= 1'b0; // clear on read
end
// int_araddr[7:0]
always @(posedge clk) begin
    if (rst)
        int_araddr[7:0] <= 0;
    else
        int_araddr[7:0] <= araddr_set[7:0];
end
// int_arvalid[0:0]
always @(posedge clk) begin
    if (rst)
        int_arvalid[0:0] <= 0;
    else
        int_arvalid[0:0] <= arvalid_set[0:0];
end
// int_arready_i[0:0]
always @(posedge clk) begin
    if (rst)
        int_arready_i[0:0] <= 0;
    else
        int_arready_i[0:0] <= arready_i_set[0:0];
end
// int_arready_o
always @(posedge clk) begin
    if (rst)
        int_arready_o <= 0;
    else if (arready_o_ap_vld)
        int_arready_o <= arready_o;
end
// arready_o_vld_ext
always @(posedge clk) begin
    if (rst)
        arready_o_vld_ext <= 1'b0;
    else
        arready_o_vld_ext <= arready_o_vld_get;
end
// int_arready_o_ap_vld
always @(posedge clk) begin
    if (rst)
        int_arready_o_ap_vld <= 1'b0;
    else if (arready_o_ap_vld)
        int_arready_o_ap_vld <= 1'b1;
    else if (arready_o_vld_get == 1'b0 && arready_o_vld_ext == 1'b1)
        int_arready_o_ap_vld <= 1'b0; // clear on read
end
// int_rdata
always @(posedge clk) begin
    if (rst)
        int_rdata <= 0;
    else if (rdata_ap_vld)
        int_rdata <= rdata;
end
// rdata_vld_ext
always @(posedge clk) begin
    if (rst)
        rdata_vld_ext <= 1'b0;
    else
        rdata_vld_ext <= rdata_vld_get;
end
// int_rdata_ap_vld
always @(posedge clk) begin
    if (rst)
        int_rdata_ap_vld <= 1'b0;
    else if (rdata_ap_vld)
        int_rdata_ap_vld <= 1'b1;
    else if (rdata_vld_get == 1'b0 && rdata_vld_ext == 1'b1)
        int_rdata_ap_vld <= 1'b0; // clear on read
end
// int_rvalid_i[0:0]
always @(posedge clk) begin
    if (rst)
        int_rvalid_i[0:0] <= 0;
    else
        int_rvalid_i[0:0] <= rvalid_i_set[0:0];
end
// int_rvalid_o
always @(posedge clk) begin
    if (rst)
        int_rvalid_o <= 0;
    else if (rvalid_o_ap_vld)
        int_rvalid_o <= rvalid_o;
end
// rvalid_o_vld_ext
always @(posedge clk) begin
    if (rst)
        rvalid_o_vld_ext <= 1'b0;
    else
        rvalid_o_vld_ext <= rvalid_o_vld_get;
end
// int_rvalid_o_ap_vld
always @(posedge clk) begin
    if (rst)
        int_rvalid_o_ap_vld <= 1'b0;
    else if (rvalid_o_ap_vld)
        int_rvalid_o_ap_vld <= 1'b1;
    else if (rvalid_o_vld_get == 1'b0 && rvalid_o_vld_ext == 1'b1)
        int_rvalid_o_ap_vld <= 1'b0; // clear on read
end
// int_rst_n[0:0]
always @(posedge clk) begin
    if (rst)
        int_rst_n[0:0] <= 0;
    else
        int_rst_n[0:0] <= rst_n_set[0:0];
end

//------------------------Memory logic-------------------

endmodule
