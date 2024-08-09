// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Aug  6 16:27:02 2024
// Host        : DESKTOP-K5RPCPK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ nmp_nmp_axi4l_ip_0_1_sim_netlist.v
// Design      : nmp_nmp_axi4l_ip_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S_AXI_CONTROL_ADDR_WIDTH = "8" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_state1 = "1'b1" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nmp_axi4l_ip
   (ap_clk,
    ap_rst_n,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP);
  input ap_clk;
  input ap_rst_n;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [7:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [7:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [7:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nmp_axi4l_ip_control_s_axi control_s_axi_U
       (.\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR[7:2]),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nmp_axi4l_ip_control_s_axi
   (s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_control_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_control_RDATA,
    ap_clk,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARADDR,
    s_axi_control_AWADDR,
    s_axi_control_ARVALID,
    s_axi_control_WVALID,
    s_axi_control_BREADY,
    s_axi_control_AWVALID,
    ap_rst_n,
    s_axi_control_RREADY);
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output [31:0]s_axi_control_RDATA;
  input ap_clk;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input [7:0]s_axi_control_ARADDR;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_ARVALID;
  input s_axi_control_WVALID;
  input s_axi_control_BREADY;
  input s_axi_control_AWVALID;
  input ap_rst_n;
  input s_axi_control_RREADY;

  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ar_hs;
  wire [7:0]araddr_set0;
  wire \araddr_set[7]_i_1_n_0 ;
  wire \araddr_set_reg_n_0_[0] ;
  wire \araddr_set_reg_n_0_[1] ;
  wire \araddr_set_reg_n_0_[2] ;
  wire \araddr_set_reg_n_0_[3] ;
  wire \araddr_set_reg_n_0_[4] ;
  wire \araddr_set_reg_n_0_[5] ;
  wire \araddr_set_reg_n_0_[6] ;
  wire \araddr_set_reg_n_0_[7] ;
  wire \arready_i_set[0]_i_1_n_0 ;
  wire \arready_i_set[0]_i_2_n_0 ;
  wire \arready_i_set_reg_n_0_[0] ;
  wire arready_o_vld_get_i_1_n_0;
  wire arready_o_vld_get_i_2_n_0;
  wire \arvalid_set[0]_i_1_n_0 ;
  wire \arvalid_set_reg_n_0_[0] ;
  wire [7:0]awaddr_set0;
  wire \awaddr_set[7]_i_1_n_0 ;
  wire \awaddr_set[7]_i_3_n_0 ;
  wire \awaddr_set_reg_n_0_[0] ;
  wire \awaddr_set_reg_n_0_[1] ;
  wire \awaddr_set_reg_n_0_[2] ;
  wire \awaddr_set_reg_n_0_[3] ;
  wire \awaddr_set_reg_n_0_[4] ;
  wire \awaddr_set_reg_n_0_[5] ;
  wire \awaddr_set_reg_n_0_[6] ;
  wire \awaddr_set_reg_n_0_[7] ;
  wire \awready_i_set[0]_i_1_n_0 ;
  wire \awready_i_set[0]_i_2_n_0 ;
  wire \awready_i_set_reg_n_0_[0] ;
  wire awready_o_vld_get_i_1_n_0;
  wire awready_o_vld_get_i_2_n_0;
  wire \awvalid_set[0]_i_1_n_0 ;
  wire \awvalid_set[0]_i_2_n_0 ;
  wire \awvalid_set_reg_n_0_[0] ;
  wire \bready_set[0]_i_1_n_0 ;
  wire \bready_set_reg_n_0_[0] ;
  wire \bvalid_i_set[0]_i_1_n_0 ;
  wire \bvalid_i_set_reg_n_0_[0] ;
  wire [0:0]p_16_in;
  wire [0:0]p_21_in;
  wire [0:0]p_7_in;
  wire [7:0]rdata;
  wire \rdata[0]_i_10_n_0 ;
  wire \rdata[0]_i_11_n_0 ;
  wire \rdata[0]_i_12_n_0 ;
  wire \rdata[0]_i_13_n_0 ;
  wire \rdata[0]_i_14_n_0 ;
  wire \rdata[0]_i_15_n_0 ;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[0]_i_5_n_0 ;
  wire \rdata[0]_i_6_n_0 ;
  wire \rdata[0]_i_7_n_0 ;
  wire \rdata[0]_i_8_n_0 ;
  wire \rdata[0]_i_9_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rready_set[0]_i_1_n_0 ;
  wire \rready_set[0]_i_2_n_0 ;
  wire \rready_set_reg_n_0_[0] ;
  wire \rst_n_set[0]_i_1_n_0 ;
  wire \rst_n_set[0]_i_2_n_0 ;
  wire \rst_n_set_reg_n_0_[0] ;
  wire \rvalid_i_set[0]_i_1_n_0 ;
  wire \rvalid_i_set[0]_i_2_n_0 ;
  wire \rvalid_i_set[0]_i_3_n_0 ;
  wire \rvalid_i_set_reg_n_0_[0] ;
  wire [7:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;
  wire \wdata_set[0]_i_1_n_0 ;
  wire \wdata_set[10]_i_1_n_0 ;
  wire \wdata_set[11]_i_1_n_0 ;
  wire \wdata_set[12]_i_1_n_0 ;
  wire \wdata_set[13]_i_1_n_0 ;
  wire \wdata_set[14]_i_1_n_0 ;
  wire \wdata_set[15]_i_1_n_0 ;
  wire \wdata_set[16]_i_1_n_0 ;
  wire \wdata_set[17]_i_1_n_0 ;
  wire \wdata_set[18]_i_1_n_0 ;
  wire \wdata_set[19]_i_1_n_0 ;
  wire \wdata_set[1]_i_1_n_0 ;
  wire \wdata_set[20]_i_1_n_0 ;
  wire \wdata_set[21]_i_1_n_0 ;
  wire \wdata_set[22]_i_1_n_0 ;
  wire \wdata_set[23]_i_1_n_0 ;
  wire \wdata_set[24]_i_1_n_0 ;
  wire \wdata_set[25]_i_1_n_0 ;
  wire \wdata_set[26]_i_1_n_0 ;
  wire \wdata_set[27]_i_1_n_0 ;
  wire \wdata_set[28]_i_1_n_0 ;
  wire \wdata_set[29]_i_1_n_0 ;
  wire \wdata_set[2]_i_1_n_0 ;
  wire \wdata_set[30]_i_1_n_0 ;
  wire \wdata_set[31]_i_1_n_0 ;
  wire \wdata_set[31]_i_2_n_0 ;
  wire \wdata_set[3]_i_1_n_0 ;
  wire \wdata_set[4]_i_1_n_0 ;
  wire \wdata_set[5]_i_1_n_0 ;
  wire \wdata_set[6]_i_1_n_0 ;
  wire \wdata_set[7]_i_1_n_0 ;
  wire \wdata_set[8]_i_1_n_0 ;
  wire \wdata_set[9]_i_1_n_0 ;
  wire \wdata_set_reg_n_0_[0] ;
  wire \wdata_set_reg_n_0_[10] ;
  wire \wdata_set_reg_n_0_[11] ;
  wire \wdata_set_reg_n_0_[12] ;
  wire \wdata_set_reg_n_0_[13] ;
  wire \wdata_set_reg_n_0_[14] ;
  wire \wdata_set_reg_n_0_[15] ;
  wire \wdata_set_reg_n_0_[16] ;
  wire \wdata_set_reg_n_0_[17] ;
  wire \wdata_set_reg_n_0_[18] ;
  wire \wdata_set_reg_n_0_[19] ;
  wire \wdata_set_reg_n_0_[1] ;
  wire \wdata_set_reg_n_0_[20] ;
  wire \wdata_set_reg_n_0_[21] ;
  wire \wdata_set_reg_n_0_[22] ;
  wire \wdata_set_reg_n_0_[23] ;
  wire \wdata_set_reg_n_0_[24] ;
  wire \wdata_set_reg_n_0_[25] ;
  wire \wdata_set_reg_n_0_[26] ;
  wire \wdata_set_reg_n_0_[27] ;
  wire \wdata_set_reg_n_0_[28] ;
  wire \wdata_set_reg_n_0_[29] ;
  wire \wdata_set_reg_n_0_[2] ;
  wire \wdata_set_reg_n_0_[30] ;
  wire \wdata_set_reg_n_0_[31] ;
  wire \wdata_set_reg_n_0_[3] ;
  wire \wdata_set_reg_n_0_[4] ;
  wire \wdata_set_reg_n_0_[5] ;
  wire \wdata_set_reg_n_0_[6] ;
  wire \wdata_set_reg_n_0_[7] ;
  wire \wdata_set_reg_n_0_[8] ;
  wire \wdata_set_reg_n_0_[9] ;
  wire \wready_i_set[0]_i_1_n_0 ;
  wire \wready_i_set[0]_i_2_n_0 ;
  wire \wready_i_set[0]_i_3_n_0 ;
  wire \wready_i_set_reg_n_0_[0] ;
  wire wready_o_vld_get_i_1_n_0;
  wire wready_o_vld_get_i_2_n_0;
  wire \wvalid_set[0]_i_1_n_0 ;
  wire \wvalid_set[0]_i_2_n_0 ;
  wire \wvalid_set[0]_i_3_n_0 ;
  wire \wvalid_set_reg_n_0_[0] ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8BFB)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_control_RREADY),
        .I1(s_axi_control_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_control_ARVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_control_RVALID),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hC0FFD1D1)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_control_BVALID),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_AWVALID),
        .I4(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_AWVALID),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_BVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\araddr_set_reg_n_0_[0] ),
        .O(araddr_set0[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_set[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\araddr_set_reg_n_0_[1] ),
        .O(araddr_set0[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_set[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\araddr_set_reg_n_0_[2] ),
        .O(araddr_set0[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_set[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\araddr_set_reg_n_0_[3] ),
        .O(araddr_set0[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_set[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\araddr_set_reg_n_0_[4] ),
        .O(araddr_set0[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_set[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\araddr_set_reg_n_0_[5] ),
        .O(araddr_set0[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_set[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\araddr_set_reg_n_0_[6] ),
        .O(araddr_set0[6]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \araddr_set[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\awaddr_set[7]_i_3_n_0 ),
        .O(\araddr_set[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_set[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\araddr_set_reg_n_0_[7] ),
        .O(araddr_set0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_set_reg[0] 
       (.C(ap_clk),
        .CE(\araddr_set[7]_i_1_n_0 ),
        .D(araddr_set0[0]),
        .Q(\araddr_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_set_reg[1] 
       (.C(ap_clk),
        .CE(\araddr_set[7]_i_1_n_0 ),
        .D(araddr_set0[1]),
        .Q(\araddr_set_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_set_reg[2] 
       (.C(ap_clk),
        .CE(\araddr_set[7]_i_1_n_0 ),
        .D(araddr_set0[2]),
        .Q(\araddr_set_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_set_reg[3] 
       (.C(ap_clk),
        .CE(\araddr_set[7]_i_1_n_0 ),
        .D(araddr_set0[3]),
        .Q(\araddr_set_reg_n_0_[3] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_set_reg[4] 
       (.C(ap_clk),
        .CE(\araddr_set[7]_i_1_n_0 ),
        .D(araddr_set0[4]),
        .Q(\araddr_set_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_set_reg[5] 
       (.C(ap_clk),
        .CE(\araddr_set[7]_i_1_n_0 ),
        .D(araddr_set0[5]),
        .Q(\araddr_set_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_set_reg[6] 
       (.C(ap_clk),
        .CE(\araddr_set[7]_i_1_n_0 ),
        .D(araddr_set0[6]),
        .Q(\araddr_set_reg_n_0_[6] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_set_reg[7] 
       (.C(ap_clk),
        .CE(\araddr_set[7]_i_1_n_0 ),
        .D(araddr_set0[7]),
        .Q(\araddr_set_reg_n_0_[7] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \arready_i_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\wvalid_set[0]_i_3_n_0 ),
        .I3(\arready_i_set[0]_i_2_n_0 ),
        .I4(\awaddr_set[7]_i_3_n_0 ),
        .I5(\arready_i_set_reg_n_0_[0] ),
        .O(\arready_i_set[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \arready_i_set[0]_i_2 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[6] ),
        .O(\arready_i_set[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \arready_i_set_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\arready_i_set[0]_i_1_n_0 ),
        .Q(\arready_i_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    arready_o_vld_get_i_1
       (.I0(ap_rst_n),
        .I1(arready_o_vld_get_i_2_n_0),
        .I2(ar_hs),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[0]),
        .O(arready_o_vld_get_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    arready_o_vld_get_i_2
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[6]),
        .O(arready_o_vld_get_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    arready_o_vld_get_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(arready_o_vld_get_i_1_n_0),
        .Q(p_7_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \arvalid_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\awready_i_set[0]_i_2_n_0 ),
        .I5(\arvalid_set_reg_n_0_[0] ),
        .O(\arvalid_set[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \arvalid_set_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\arvalid_set[0]_i_1_n_0 ),
        .Q(\arvalid_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\awaddr_set_reg_n_0_[0] ),
        .O(awaddr_set0[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_set[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\awaddr_set_reg_n_0_[1] ),
        .O(awaddr_set0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_set[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\awaddr_set_reg_n_0_[2] ),
        .O(awaddr_set0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_set[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\awaddr_set_reg_n_0_[3] ),
        .O(awaddr_set0[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_set[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\awaddr_set_reg_n_0_[4] ),
        .O(awaddr_set0[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_set[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\awaddr_set_reg_n_0_[5] ),
        .O(awaddr_set0[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_set[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\awaddr_set_reg_n_0_[6] ),
        .O(awaddr_set0[6]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \awaddr_set[7]_i_1 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\awaddr_set[7]_i_3_n_0 ),
        .O(\awaddr_set[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_set[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\awaddr_set_reg_n_0_[7] ),
        .O(awaddr_set0[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \awaddr_set[7]_i_3 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(s_axi_control_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_0_[7] ),
        .O(\awaddr_set[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_set_reg[0] 
       (.C(ap_clk),
        .CE(\awaddr_set[7]_i_1_n_0 ),
        .D(awaddr_set0[0]),
        .Q(\awaddr_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_set_reg[1] 
       (.C(ap_clk),
        .CE(\awaddr_set[7]_i_1_n_0 ),
        .D(awaddr_set0[1]),
        .Q(\awaddr_set_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_set_reg[2] 
       (.C(ap_clk),
        .CE(\awaddr_set[7]_i_1_n_0 ),
        .D(awaddr_set0[2]),
        .Q(\awaddr_set_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_set_reg[3] 
       (.C(ap_clk),
        .CE(\awaddr_set[7]_i_1_n_0 ),
        .D(awaddr_set0[3]),
        .Q(\awaddr_set_reg_n_0_[3] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_set_reg[4] 
       (.C(ap_clk),
        .CE(\awaddr_set[7]_i_1_n_0 ),
        .D(awaddr_set0[4]),
        .Q(\awaddr_set_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_set_reg[5] 
       (.C(ap_clk),
        .CE(\awaddr_set[7]_i_1_n_0 ),
        .D(awaddr_set0[5]),
        .Q(\awaddr_set_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_set_reg[6] 
       (.C(ap_clk),
        .CE(\awaddr_set[7]_i_1_n_0 ),
        .D(awaddr_set0[6]),
        .Q(\awaddr_set_reg_n_0_[6] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_set_reg[7] 
       (.C(ap_clk),
        .CE(\awaddr_set[7]_i_1_n_0 ),
        .D(awaddr_set0[7]),
        .Q(\awaddr_set_reg_n_0_[7] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \awready_i_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\awready_i_set[0]_i_2_n_0 ),
        .I5(\awready_i_set_reg_n_0_[0] ),
        .O(\awready_i_set[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \awready_i_set[0]_i_2 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(\waddr_reg_n_0_[7] ),
        .I5(\waddr_reg_n_0_[5] ),
        .O(\awready_i_set[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awready_i_set_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\awready_i_set[0]_i_1_n_0 ),
        .Q(\awready_i_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    awready_o_vld_get_i_1
       (.I0(ap_rst_n),
        .I1(awready_o_vld_get_i_2_n_0),
        .I2(ar_hs),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[0]),
        .O(awready_o_vld_get_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    awready_o_vld_get_i_2
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[7]),
        .I3(s_axi_control_ARADDR[6]),
        .I4(s_axi_control_ARADDR[5]),
        .O(awready_o_vld_get_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    awready_o_vld_get_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(awready_o_vld_get_i_1_n_0),
        .Q(p_21_in),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \awvalid_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\awvalid_set[0]_i_2_n_0 ),
        .I3(\awaddr_set[7]_i_3_n_0 ),
        .I4(\awvalid_set_reg_n_0_[0] ),
        .O(\awvalid_set[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \awvalid_set[0]_i_2 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\waddr_reg_n_0_[4] ),
        .O(\awvalid_set[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awvalid_set_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\awvalid_set[0]_i_1_n_0 ),
        .Q(\awvalid_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \bready_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[6] ),
        .I4(\awready_i_set[0]_i_2_n_0 ),
        .I5(\bready_set_reg_n_0_[0] ),
        .O(\bready_set[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bready_set_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\bready_set[0]_i_1_n_0 ),
        .Q(\bready_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \bvalid_i_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\wready_i_set[0]_i_2_n_0 ),
        .I4(\wready_i_set[0]_i_3_n_0 ),
        .I5(\bvalid_i_set_reg_n_0_[0] ),
        .O(\bvalid_i_set[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_i_set_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\bvalid_i_set[0]_i_1_n_0 ),
        .Q(\bvalid_i_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h1310131310101010)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(\rdata[0]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(\rdata[0]_i_4_n_0 ),
        .I4(\rdata[0]_i_5_n_0 ),
        .I5(\rdata[0]_i_6_n_0 ),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'h1010001010000000)) 
    \rdata[0]_i_10 
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\wdata_set_reg_n_0_[0] ),
        .I5(\awready_i_set_reg_n_0_[0] ),
        .O(\rdata[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \rdata[0]_i_11 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[7]),
        .O(\rdata[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h053FF53F)) 
    \rdata[0]_i_12 
       (.I0(\rready_set_reg_n_0_[0] ),
        .I1(\wvalid_set_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[7]),
        .I4(\rst_n_set_reg_n_0_[0] ),
        .O(\rdata[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4040004040000000)) 
    \rdata[0]_i_13 
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\arready_i_set_reg_n_0_[0] ),
        .I5(\araddr_set_reg_n_0_[0] ),
        .O(\rdata[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \rdata[0]_i_14 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[7]),
        .I3(\rvalid_i_set_reg_n_0_[0] ),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    \rdata[0]_i_15 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(s_axi_control_ARADDR[7]),
        .I4(\awvalid_set_reg_n_0_[0] ),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \rdata[0]_i_2 
       (.I0(p_16_in),
        .I1(wready_o_vld_get_i_2_n_0),
        .I2(p_7_in),
        .I3(arready_o_vld_get_i_2_n_0),
        .I4(p_21_in),
        .I5(awready_o_vld_get_i_2_n_0),
        .O(\rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[0]_i_3 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA280)) 
    \rdata[0]_i_4 
       (.I0(\rdata[0]_i_7_n_0 ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\arvalid_set_reg_n_0_[0] ),
        .I3(\bready_set_reg_n_0_[0] ),
        .I4(s_axi_control_ARADDR[3]),
        .I5(\rdata[0]_i_8_n_0 ),
        .O(\rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0D0D0D0D000D0D0D)) 
    \rdata[0]_i_5 
       (.I0(\awaddr_set_reg_n_0_[0] ),
        .I1(\rdata[0]_i_9_n_0 ),
        .I2(\rdata[0]_i_10_n_0 ),
        .I3(\rdata[0]_i_11_n_0 ),
        .I4(\wready_i_set_reg_n_0_[0] ),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF04)) 
    \rdata[0]_i_6 
       (.I0(\rdata[0]_i_12_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(\rdata[0]_i_13_n_0 ),
        .I4(\rdata[0]_i_14_n_0 ),
        .I5(\rdata[0]_i_15_n_0 ),
        .O(\rdata[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rdata[0]_i_7 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[7]),
        .O(\rdata[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \rdata[0]_i_8 
       (.I0(\bvalid_i_set_reg_n_0_[0] ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[7]),
        .I4(s_axi_control_ARADDR[6]),
        .O(\rdata[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rdata[0]_i_9 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(s_axi_control_ARADDR[7]),
        .O(\rdata[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \rdata[1]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\wdata_set_reg_n_0_[1] ),
        .I2(\araddr_set_reg_n_0_[1] ),
        .I3(\rdata[7]_i_3_n_0 ),
        .I4(\awaddr_set_reg_n_0_[1] ),
        .I5(\rdata[7]_i_2_n_0 ),
        .O(rdata[1]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \rdata[2]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\wdata_set_reg_n_0_[2] ),
        .I2(\araddr_set_reg_n_0_[2] ),
        .I3(\rdata[7]_i_3_n_0 ),
        .I4(\awaddr_set_reg_n_0_[2] ),
        .I5(\rdata[7]_i_2_n_0 ),
        .O(rdata[2]));
  LUT3 #(
    .INIT(8'h80)) 
    \rdata[31]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_2 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .O(ar_hs));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \rdata[31]_i_3 
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\rdata[31]_i_4_n_0 ),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata[31]_i_4 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[1]),
        .O(\rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \rdata[3]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(\awaddr_set_reg_n_0_[3] ),
        .I2(\araddr_set_reg_n_0_[3] ),
        .I3(\rdata[7]_i_3_n_0 ),
        .I4(\wdata_set_reg_n_0_[3] ),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(rdata[3]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \rdata[4]_i_1 
       (.I0(\rdata[7]_i_3_n_0 ),
        .I1(\araddr_set_reg_n_0_[4] ),
        .I2(\wdata_set_reg_n_0_[4] ),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\awaddr_set_reg_n_0_[4] ),
        .I5(\rdata[7]_i_2_n_0 ),
        .O(rdata[4]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \rdata[5]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(\awaddr_set_reg_n_0_[5] ),
        .I2(\araddr_set_reg_n_0_[5] ),
        .I3(\rdata[7]_i_3_n_0 ),
        .I4(\wdata_set_reg_n_0_[5] ),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(rdata[5]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \rdata[6]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\wdata_set_reg_n_0_[6] ),
        .I2(\araddr_set_reg_n_0_[6] ),
        .I3(\rdata[7]_i_3_n_0 ),
        .I4(\awaddr_set_reg_n_0_[6] ),
        .I5(\rdata[7]_i_2_n_0 ),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \rdata[7]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\wdata_set_reg_n_0_[7] ),
        .I2(\awaddr_set_reg_n_0_[7] ),
        .I3(\rdata[7]_i_2_n_0 ),
        .I4(\araddr_set_reg_n_0_[7] ),
        .I5(\rdata[7]_i_3_n_0 ),
        .O(rdata[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \rdata[7]_i_2 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[7]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFFFFFF)) 
    \rdata[7]_i_3 
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[31]_i_4_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[7]_i_3_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[10] ),
        .Q(s_axi_control_RDATA[10]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[11] ),
        .Q(s_axi_control_RDATA[11]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[12] ),
        .Q(s_axi_control_RDATA[12]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[13] ),
        .Q(s_axi_control_RDATA[13]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[14] ),
        .Q(s_axi_control_RDATA[14]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[15] ),
        .Q(s_axi_control_RDATA[15]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[16] ),
        .Q(s_axi_control_RDATA[16]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[17] ),
        .Q(s_axi_control_RDATA[17]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[18] ),
        .Q(s_axi_control_RDATA[18]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[19] ),
        .Q(s_axi_control_RDATA[19]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[20] ),
        .Q(s_axi_control_RDATA[20]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[21] ),
        .Q(s_axi_control_RDATA[21]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[22] ),
        .Q(s_axi_control_RDATA[22]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[23] ),
        .Q(s_axi_control_RDATA[23]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[24] ),
        .Q(s_axi_control_RDATA[24]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[25] ),
        .Q(s_axi_control_RDATA[25]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[26] ),
        .Q(s_axi_control_RDATA[26]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[27] ),
        .Q(s_axi_control_RDATA[27]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[28] ),
        .Q(s_axi_control_RDATA[28]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[29] ),
        .Q(s_axi_control_RDATA[29]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[30] ),
        .Q(s_axi_control_RDATA[30]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[31] ),
        .Q(s_axi_control_RDATA[31]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[8] ),
        .Q(s_axi_control_RDATA[8]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\wdata_set_reg_n_0_[9] ),
        .Q(s_axi_control_RDATA[9]),
        .R(\rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rready_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\rready_set[0]_i_2_n_0 ),
        .I3(\rvalid_i_set[0]_i_3_n_0 ),
        .I4(\rready_set_reg_n_0_[0] ),
        .O(\rready_set[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \rready_set[0]_i_2 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[7] ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\waddr_reg_n_0_[3] ),
        .O(\rready_set[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rready_set_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rready_set[0]_i_1_n_0 ),
        .Q(\rready_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rst_n_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\rst_n_set[0]_i_2_n_0 ),
        .I3(\rvalid_i_set[0]_i_3_n_0 ),
        .I4(\rst_n_set_reg_n_0_[0] ),
        .O(\rst_n_set[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \rst_n_set[0]_i_2 
       (.I0(\waddr_reg_n_0_[7] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\waddr_reg_n_0_[3] ),
        .O(\rst_n_set[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_n_set_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rst_n_set[0]_i_1_n_0 ),
        .Q(\rst_n_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \rvalid_i_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\rvalid_i_set[0]_i_2_n_0 ),
        .I3(\rvalid_i_set[0]_i_3_n_0 ),
        .I4(\rvalid_i_set_reg_n_0_[0] ),
        .O(\rvalid_i_set[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \rvalid_i_set[0]_i_2 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[7] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\waddr_reg_n_0_[6] ),
        .I4(\waddr_reg_n_0_[4] ),
        .O(\rvalid_i_set[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rvalid_i_set[0]_i_3 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_control_WVALID),
        .I2(\waddr_reg_n_0_[2] ),
        .O(\rvalid_i_set[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rvalid_i_set_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rvalid_i_set[0]_i_1_n_0 ),
        .Q(\rvalid_i_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[7]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \waddr_reg[7] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[5]),
        .Q(\waddr_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\wdata_set_reg_n_0_[0] ),
        .O(\wdata_set[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\wdata_set_reg_n_0_[10] ),
        .O(\wdata_set[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\wdata_set_reg_n_0_[11] ),
        .O(\wdata_set[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\wdata_set_reg_n_0_[12] ),
        .O(\wdata_set[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\wdata_set_reg_n_0_[13] ),
        .O(\wdata_set[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\wdata_set_reg_n_0_[14] ),
        .O(\wdata_set[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\wdata_set_reg_n_0_[15] ),
        .O(\wdata_set[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\wdata_set_reg_n_0_[16] ),
        .O(\wdata_set[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\wdata_set_reg_n_0_[17] ),
        .O(\wdata_set[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\wdata_set_reg_n_0_[18] ),
        .O(\wdata_set[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\wdata_set_reg_n_0_[19] ),
        .O(\wdata_set[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\wdata_set_reg_n_0_[1] ),
        .O(\wdata_set[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\wdata_set_reg_n_0_[20] ),
        .O(\wdata_set[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\wdata_set_reg_n_0_[21] ),
        .O(\wdata_set[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\wdata_set_reg_n_0_[22] ),
        .O(\wdata_set[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\wdata_set_reg_n_0_[23] ),
        .O(\wdata_set[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\wdata_set_reg_n_0_[24] ),
        .O(\wdata_set[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\wdata_set_reg_n_0_[25] ),
        .O(\wdata_set[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\wdata_set_reg_n_0_[26] ),
        .O(\wdata_set[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\wdata_set_reg_n_0_[27] ),
        .O(\wdata_set[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\wdata_set_reg_n_0_[28] ),
        .O(\wdata_set[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\wdata_set_reg_n_0_[29] ),
        .O(\wdata_set[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\wdata_set_reg_n_0_[2] ),
        .O(\wdata_set[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\wdata_set_reg_n_0_[30] ),
        .O(\wdata_set[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \wdata_set[31]_i_1 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\awaddr_set[7]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[6] ),
        .I4(\waddr_reg_n_0_[4] ),
        .O(\wdata_set[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\wdata_set_reg_n_0_[31] ),
        .O(\wdata_set[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\wdata_set_reg_n_0_[3] ),
        .O(\wdata_set[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\wdata_set_reg_n_0_[4] ),
        .O(\wdata_set[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\wdata_set_reg_n_0_[5] ),
        .O(\wdata_set[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\wdata_set_reg_n_0_[6] ),
        .O(\wdata_set[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\wdata_set_reg_n_0_[7] ),
        .O(\wdata_set[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\wdata_set_reg_n_0_[8] ),
        .O(\wdata_set[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_set[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\wdata_set_reg_n_0_[9] ),
        .O(\wdata_set[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[0] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[0]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[10] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[10]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[10] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[11] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[11]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[11] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[12] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[12]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[12] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[13] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[13]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[13] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[14] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[14]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[14] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[15] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[15]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[15] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[16] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[16]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[16] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[17] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[17]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[17] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[18] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[18]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[18] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[19] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[19]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[19] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[1] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[1]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[20] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[20]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[20] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[21] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[21]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[21] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[22] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[22]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[22] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[23] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[23]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[23] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[24] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[24]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[24] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[25] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[25]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[25] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[26] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[26]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[26] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[27] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[27]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[27] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[28] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[28]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[28] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[29] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[29]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[29] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[2] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[2]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[30] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[30]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[30] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[31] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[31]_i_2_n_0 ),
        .Q(\wdata_set_reg_n_0_[31] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[3] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[3]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[3] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[4] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[4]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[5] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[5]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[6] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[6]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[6] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[7] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[7]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[7] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[8] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[8]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[8] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \wdata_set_reg[9] 
       (.C(ap_clk),
        .CE(\wdata_set[31]_i_1_n_0 ),
        .D(\wdata_set[9]_i_1_n_0 ),
        .Q(\wdata_set_reg_n_0_[9] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \wready_i_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\wready_i_set[0]_i_2_n_0 ),
        .I4(\wready_i_set[0]_i_3_n_0 ),
        .I5(\wready_i_set_reg_n_0_[0] ),
        .O(\wready_i_set[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wready_i_set[0]_i_2 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\waddr_reg_n_0_[5] ),
        .O(\wready_i_set[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \wready_i_set[0]_i_3 
       (.I0(\waddr_reg_n_0_[7] ),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(\waddr_reg_n_0_[3] ),
        .O(\wready_i_set[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wready_i_set_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wready_i_set[0]_i_1_n_0 ),
        .Q(\wready_i_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    wready_o_vld_get_i_1
       (.I0(ap_rst_n),
        .I1(wready_o_vld_get_i_2_n_0),
        .I2(ar_hs),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[0]),
        .O(wready_o_vld_get_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    wready_o_vld_get_i_2
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[7]),
        .I3(s_axi_control_ARADDR[6]),
        .I4(s_axi_control_ARADDR[5]),
        .O(wready_o_vld_get_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wready_o_vld_get_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(wready_o_vld_get_i_1_n_0),
        .Q(p_16_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \wvalid_set[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\wvalid_set[0]_i_2_n_0 ),
        .I3(\wvalid_set[0]_i_3_n_0 ),
        .I4(\awaddr_set[7]_i_3_n_0 ),
        .I5(\wvalid_set_reg_n_0_[0] ),
        .O(\wvalid_set[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wvalid_set[0]_i_2 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[6] ),
        .O(\wvalid_set[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wvalid_set[0]_i_3 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[5] ),
        .O(\wvalid_set[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wvalid_set_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wvalid_set[0]_i_1_n_0 ),
        .Q(\wvalid_set_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
endmodule

(* CHECK_LICENSE_TYPE = "nmp_nmp_axi4l_ip_0_1,nmp_axi4l_ip,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "nmp_axi4l_ip,Vivado 2024.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_control_ARADDR,
    s_axi_control_ARREADY,
    s_axi_control_ARVALID,
    s_axi_control_AWADDR,
    s_axi_control_AWREADY,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_RDATA,
    s_axi_control_RREADY,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_WDATA,
    s_axi_control_WREADY,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    ap_clk,
    ap_rst_n);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [7:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [7:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 8, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN nmp_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN nmp_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [7:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "8" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nmp_axi4l_ip inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR({s_axi_control_AWADDR[7:2],1'b0,1'b0}),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule
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
