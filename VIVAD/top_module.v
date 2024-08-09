module top_module (
    inout  wire [14:0] DDR_addr,
    inout  wire [2:0]  DDR_ba,
    inout  wire        DDR_cas_n,
    inout  wire        DDR_ck_n,
    inout  wire        DDR_ck_p,
    inout  wire        DDR_cke,
    inout  wire        DDR_cs_n,
    inout  wire [3:0]  DDR_dm,
    inout  wire [31:0] DDR_dq,
    inout  wire [3:0]  DDR_dqs_n,
    inout  wire [3:0]  DDR_dqs_p,
    inout  wire        DDR_odt,
    inout  wire        DDR_ras_n,
    inout  wire        DDR_reset_n,
    inout  wire        DDR_we_n,
    inout  wire        FIXED_IO_ddr_vrn,
    inout  wire        FIXED_IO_ddr_vrp,
    inout  wire [53:0] FIXED_IO_mio,
    inout  wire        FIXED_IO_ps_clk,
    inout  wire        FIXED_IO_ps_porb,
    inout  wire        FIXED_IO_ps_srstb
);

    wire FCLK_CLK0;
    wire FCLK_RESET0_N;
    wire [31:0] M_AXI_GP0_ARADDR;
    wire [1:0]  M_AXI_GP0_ARBURST;
    wire [3:0]  M_AXI_GP0_ARCACHE;
    wire [11:0] M_AXI_GP0_ARID;
    wire [3:0]  M_AXI_GP0_ARLEN;
    wire [1:0]  M_AXI_GP0_ARLOCK;
    wire [2:0]  M_AXI_GP0_ARPROT;
    wire [3:0]  M_AXI_GP0_ARQOS;
    wire        M_AXI_GP0_ARREADY;
    wire [2:0]  M_AXI_GP0_ARSIZE;
    wire        M_AXI_GP0_ARVALID;
    wire [31:0] M_AXI_GP0_AWADDR;
    wire [1:0]  M_AXI_GP0_AWBURST;
    wire [3:0]  M_AXI_GP0_AWCACHE;
    wire [11:0] M_AXI_GP0_AWID;
    wire [3:0]  M_AXI_GP0_AWLEN;
    wire [1:0]  M_AXI_GP0_AWLOCK;
    wire [2:0]  M_AXI_GP0_AWPROT;
    wire [3:0]  M_AXI_GP0_AWQOS;
    wire        M_AXI_GP0_AWREADY;
    wire [2:0]  M_AXI_GP0_AWSIZE;
    wire        M_AXI_GP0_AWVALID;
    wire        M_AXI_GP0_BREADY;
    wire [1:0]  M_AXI_GP0_BRESP;
    wire        M_AXI_GP0_BVALID;
    wire [31:0] M_AXI_GP0_RDATA;
    wire [11:0] M_AXI_GP0_RID;
    wire        M_AXI_GP0_RLAST;
    wire        M_AXI_GP0_RREADY;
    wire [1:0]  M_AXI_GP0_RRESP;
    wire        M_AXI_GP0_RVALID;
    wire [31:0] M_AXI_GP0_WDATA;
    wire [11:0] M_AXI_GP0_WID;
    wire        M_AXI_GP0_WLAST;
    wire        M_AXI_GP0_WREADY;
    wire [3:0]  M_AXI_GP0_WSTRB;
    wire        M_AXI_GP0_WVALID;

    wire [31:0] S_AXI_HP0_ARADDR;
    wire [1:0]  S_AXI_HP0_ARBURST;
    wire [3:0]  S_AXI_HP0_ARCACHE;
    wire [5:0]  S_AXI_HP0_ARID;
    wire [3:0]  S_AXI_HP0_ARLEN;
    wire [1:0]  S_AXI_HP0_ARLOCK;
    wire [2:0]  S_AXI_HP0_ARPROT;
    wire [3:0]  S_AXI_HP0_ARQOS;
    wire        S_AXI_HP0_ARREADY;
    wire [2:0]  S_AXI_HP0_ARSIZE;
    wire        S_AXI_HP0_ARVALID;
    wire [31:0] S_AXI_HP0_AWADDR;
    wire [1:0]  S_AXI_HP0_AWBURST;
    wire [3:0]  S_AXI_HP0_AWCACHE;
    wire [5:0]  S_AXI_HP0_AWID;
    wire [3:0]  S_AXI_HP0_AWLEN;
    wire [1:0]  S_AXI_HP0_AWLOCK;
    wire [2:0]  S_AXI_HP0_AWPROT;
    wire [3:0]  S_AXI_HP0_AWQOS;
    wire        S_AXI_HP0_AWREADY;
    wire [2:0]  S_AXI_HP0_AWSIZE;
    wire        S_AXI_HP0_AWVALID;
    wire        S_AXI_HP0_BREADY;
    wire [1:0]  S_AXI_HP0_BRESP;
    wire [5:0]  S_AXI_HP0_BID;
    wire        S_AXI_HP0_BVALID;
    wire [31:0] S_AXI_HP0_RDATA;
    wire [5:0]  S_AXI_HP0_RID;
    wire        S_AXI_HP0_RLAST;
    wire        S_AXI_HP0_RREADY;
    wire [1:0]  S_AXI_HP0_RRESP;
    wire        S_AXI_HP0_RVALID;
    wire [31:0] S_AXI_HP0_WDATA;
    wire [5:0]  S_AXI_HP0_WID;
    wire        S_AXI_HP0_WLAST;
    wire        S_AXI_HP0_WREADY;
    wire [3:0]  S_AXI_HP0_WSTRB;
    wire        S_AXI_HP0_WVALID;

    // Instantiate the Processing System7
    processing_system7_0 ps7 (
        .DDR_Addr(DDR_addr),
        .DDR_BankAddr(DDR_ba),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm),
        .DDR_DQ(DDR_dq),
        .DDR_DQS(DDR_dqs_p),
        .DDR_DQS_n(DDR_dqs_n),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_WEB(DDR_we_n),
        .MIO(FIXED_IO_mio),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .FCLK_CLK0(FCLK_CLK0),
        .FCLK_RESET0_N(FCLK_RESET0_N),
        .M_AXI_GP0_ARADDR(M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BREADY(M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(M_AXI_GP0_WVALID)
    );

    // Instantiate Processor System Reset
    proc_sys_reset_0 proc_sys_reset (
        .slowest_sync_clk(FCLK_CLK0),
        .ext_reset_in(FCLK_RESET0_N),
        .aux_reset_in(1'b1),
        .mb_debug_sys_rst(1'b0),
        .dcm_locked(1'b1),
        .peripheral_reset(),
        .interconnect_aresetn(),
        .peripheral_aresetn()
    );

    // Instantiate AXI Interconnect
    axi_interconnect_0 axi_interconnect (
        .INTERCONNECT_ACLK(FCLK_CLK0),
        .INTERCONNECT_ARESETN(FCLK_RESET0_N),
        .S00_AXI_ARADDR(M_AXI_GP0_ARADDR),
        .S00_AXI_ARBURST(M_AXI_GP0_ARBURST),
        .S00_AXI_ARCACHE(M_AXI_GP0_ARCACHE),
        .S00_AXI_ARID(M_AXI_GP0_ARID),
        .S00_AXI_ARLEN(M_AXI_GP0_ARLEN),
        .S00_AXI_ARLOCK(M_AXI_GP0_ARLOCK),
        .S00_AXI_ARPROT(M_AXI_GP0_ARPROT),
        .S00_AXI_ARQOS(M_AXI_GP0_ARQOS),
        .S00_AXI_ARREADY(M_AXI_GP0_ARREADY),
        .S00_AXI_ARSIZE(M_AXI_GP0_ARSIZE),
        .S00_AXI_ARVALID(M_AXI_GP0_ARVALID),
        .S00_AXI_AWADDR(M_AXI_GP0_AWADDR),
        .S00_AXI_AWBURST(M_AXI_GP0_AWBURST),
        .S00_AXI_AWCACHE(M_AXI_GP0_AWCACHE),
        .S00_AXI_AWID(M_AXI_GP0_AWID),
        .S00_AXI_AWLEN(M_AXI_GP0_AWLEN),
        .S00_AXI_AWLOCK(M_AXI_GP0_AWLOCK),
        .S00_AXI_AWPROT(M_AXI_GP0_AWPROT),
        .S00_AXI_AWQOS(M_AXI_GP0_AWQOS),
        .S00_AXI_AWREADY(M_AXI_GP0_AWREADY),
        .S00_AXI_AWSIZE(M_AXI_GP0_AWSIZE),
        .S00_AXI_AWVALID(M_AXI_GP0_AWVALID),
        .S00_AXI_BREADY(M_AXI_GP0_BREADY),
        .S00_AXI_BRESP(M_AXI_GP0_BRESP),
        .S00_AXI_BVALID(M_AXI_GP0_BVALID),
        .S00_AXI_RDATA(M_AXI_GP0_RDATA),
        .S00_AXI_RID(M_AXI_GP0_RID),
        .S00_AXI_RLAST(M_AXI_GP0_RLAST),
        .S00_AXI_RREADY(M_AXI_GP0_RREADY),
        .S00_AXI_RRESP(M_AXI_GP0_RRESP),
        .S00_AXI_RVALID(M_AXI_GP0_RVALID),
        .S00_AXI_WDATA(M_AXI_GP0_WDATA),
        .S00_AXI_WID(M_AXI_GP0_WID),
        .S00_AXI_WLAST(M_AXI_GP0_WLAST),
        .S00_AXI_WREADY(M_AXI_GP0_WREADY),
        .S00_AXI_WSTRB(M_AXI_GP0_WSTRB),
        .S00_AXI_WVALID(M_AXI_GP0_WVALID)
    );

    // Instantiate the IP generated by Vitis HLS
    nmp_axi4l_ip nmp_axi4l_ip_inst (
        .S_AXI_ACLK(FCLK_CLK0),
        .S_AXI_ARESETN(FCLK_RESET0_N),
        .S_AXI_AWVALID(),
        .S_AXI_AWREADY(),
        .S_AXI_AWADDR(),
        .S_AXI_AWPROT(),
        .S_AXI_WVALID(),
        .S_AXI_WREADY(),
        .S_AXI_WDATA(),
        .S_AXI_WSTRB(),
        .S_AXI_BVALID(),
        .S_AXI_BREADY(),
        .S_AXI_BRESP(),
        .S_AXI_ARVALID(),
        .S_AXI_ARREADY(),
        .S_AXI_ARADDR(),
        .S_AXI_ARPROT(),
        .S_AXI_RVALID(),
        .S_AXI_RREADY(),
        .S_AXI_RDATA(),
        .S_AXI_RRESP()
    );

endmodule
