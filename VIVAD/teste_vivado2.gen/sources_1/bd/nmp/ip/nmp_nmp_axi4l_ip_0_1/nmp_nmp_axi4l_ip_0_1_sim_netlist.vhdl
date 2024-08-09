-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Aug  6 16:27:02 2024
-- Host        : DESKTOP-K5RPCPK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/renan/Desktop/teste_vivado2/teste_vivado2.gen/sources_1/bd/nmp/ip/nmp_nmp_axi4l_ip_0_1/nmp_nmp_axi4l_ip_0_1_sim_netlist.vhdl
-- Design      : nmp_nmp_axi4l_ip_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip_control_s_axi is
  port (
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RVALID : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip_control_s_axi : entity is "nmp_axi4l_ip_control_s_axi";
end nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip_control_s_axi;

architecture STRUCTURE of nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip_control_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal araddr_set0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \araddr_set[7]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_set_reg_n_0_[0]\ : STD_LOGIC;
  signal \araddr_set_reg_n_0_[1]\ : STD_LOGIC;
  signal \araddr_set_reg_n_0_[2]\ : STD_LOGIC;
  signal \araddr_set_reg_n_0_[3]\ : STD_LOGIC;
  signal \araddr_set_reg_n_0_[4]\ : STD_LOGIC;
  signal \araddr_set_reg_n_0_[5]\ : STD_LOGIC;
  signal \araddr_set_reg_n_0_[6]\ : STD_LOGIC;
  signal \araddr_set_reg_n_0_[7]\ : STD_LOGIC;
  signal \arready_i_set[0]_i_1_n_0\ : STD_LOGIC;
  signal \arready_i_set[0]_i_2_n_0\ : STD_LOGIC;
  signal \arready_i_set_reg_n_0_[0]\ : STD_LOGIC;
  signal arready_o_vld_get_i_1_n_0 : STD_LOGIC;
  signal arready_o_vld_get_i_2_n_0 : STD_LOGIC;
  signal \arvalid_set[0]_i_1_n_0\ : STD_LOGIC;
  signal \arvalid_set_reg_n_0_[0]\ : STD_LOGIC;
  signal awaddr_set0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \awaddr_set[7]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_set[7]_i_3_n_0\ : STD_LOGIC;
  signal \awaddr_set_reg_n_0_[0]\ : STD_LOGIC;
  signal \awaddr_set_reg_n_0_[1]\ : STD_LOGIC;
  signal \awaddr_set_reg_n_0_[2]\ : STD_LOGIC;
  signal \awaddr_set_reg_n_0_[3]\ : STD_LOGIC;
  signal \awaddr_set_reg_n_0_[4]\ : STD_LOGIC;
  signal \awaddr_set_reg_n_0_[5]\ : STD_LOGIC;
  signal \awaddr_set_reg_n_0_[6]\ : STD_LOGIC;
  signal \awaddr_set_reg_n_0_[7]\ : STD_LOGIC;
  signal \awready_i_set[0]_i_1_n_0\ : STD_LOGIC;
  signal \awready_i_set[0]_i_2_n_0\ : STD_LOGIC;
  signal \awready_i_set_reg_n_0_[0]\ : STD_LOGIC;
  signal awready_o_vld_get_i_1_n_0 : STD_LOGIC;
  signal awready_o_vld_get_i_2_n_0 : STD_LOGIC;
  signal \awvalid_set[0]_i_1_n_0\ : STD_LOGIC;
  signal \awvalid_set[0]_i_2_n_0\ : STD_LOGIC;
  signal \awvalid_set_reg_n_0_[0]\ : STD_LOGIC;
  signal \bready_set[0]_i_1_n_0\ : STD_LOGIC;
  signal \bready_set_reg_n_0_[0]\ : STD_LOGIC;
  signal \bvalid_i_set[0]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_i_set_reg_n_0_[0]\ : STD_LOGIC;
  signal p_16_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_21_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_7_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdata[0]_i_10_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_11_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_12_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_13_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_14_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_15_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_9_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \rready_set[0]_i_1_n_0\ : STD_LOGIC;
  signal \rready_set[0]_i_2_n_0\ : STD_LOGIC;
  signal \rready_set_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_n_set[0]_i_1_n_0\ : STD_LOGIC;
  signal \rst_n_set[0]_i_2_n_0\ : STD_LOGIC;
  signal \rst_n_set_reg_n_0_[0]\ : STD_LOGIC;
  signal \rvalid_i_set[0]_i_1_n_0\ : STD_LOGIC;
  signal \rvalid_i_set[0]_i_2_n_0\ : STD_LOGIC;
  signal \rvalid_i_set[0]_i_3_n_0\ : STD_LOGIC;
  signal \rvalid_i_set_reg_n_0_[0]\ : STD_LOGIC;
  signal \^s_axi_control_bvalid\ : STD_LOGIC;
  signal \^s_axi_control_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \wdata_set[0]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[10]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[11]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[12]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[13]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[14]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[15]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[16]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[17]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[18]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[19]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[1]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[20]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[21]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[22]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[23]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[24]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[25]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[26]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[27]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[28]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[29]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[2]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[30]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[31]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[31]_i_2_n_0\ : STD_LOGIC;
  signal \wdata_set[3]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[4]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[5]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[6]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[7]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[8]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set[9]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[0]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[10]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[11]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[12]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[13]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[14]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[15]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[16]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[17]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[18]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[19]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[1]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[20]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[21]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[22]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[23]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[24]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[25]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[26]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[27]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[28]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[29]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[2]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[30]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[31]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[3]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[4]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[5]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[6]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[7]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[8]\ : STD_LOGIC;
  signal \wdata_set_reg_n_0_[9]\ : STD_LOGIC;
  signal \wready_i_set[0]_i_1_n_0\ : STD_LOGIC;
  signal \wready_i_set[0]_i_2_n_0\ : STD_LOGIC;
  signal \wready_i_set[0]_i_3_n_0\ : STD_LOGIC;
  signal \wready_i_set_reg_n_0_[0]\ : STD_LOGIC;
  signal wready_o_vld_get_i_1_n_0 : STD_LOGIC;
  signal wready_o_vld_get_i_2_n_0 : STD_LOGIC;
  signal \wvalid_set[0]_i_1_n_0\ : STD_LOGIC;
  signal \wvalid_set[0]_i_2_n_0\ : STD_LOGIC;
  signal \wvalid_set[0]_i_3_n_0\ : STD_LOGIC;
  signal \wvalid_set_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute SOFT_HLUTNM of \FSM_onehot_wstate[3]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \araddr_set[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \araddr_set[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \araddr_set[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \araddr_set[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \araddr_set[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \araddr_set[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \araddr_set[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \araddr_set[7]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \arready_i_set[0]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of arready_o_vld_get_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \awaddr_set[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \awaddr_set[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \awaddr_set[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \awaddr_set[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \awaddr_set[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \awaddr_set[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \awaddr_set[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \awaddr_set[7]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \awaddr_set[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of awready_o_vld_get_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \awvalid_set[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdata[0]_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[0]_i_14\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[0]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rdata[0]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata[0]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[0]_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[31]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rready_set[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rst_n_set[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rvalid_i_set[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rvalid_i_set[0]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wdata_set[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wdata_set[10]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \wdata_set[11]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \wdata_set[12]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wdata_set[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wdata_set[14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \wdata_set[15]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \wdata_set[16]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \wdata_set[17]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \wdata_set[18]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \wdata_set[19]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \wdata_set[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wdata_set[20]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wdata_set[21]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wdata_set[22]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \wdata_set[23]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \wdata_set[24]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \wdata_set[25]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \wdata_set[26]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wdata_set[27]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wdata_set[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wdata_set[29]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wdata_set[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wdata_set[30]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wdata_set[31]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wdata_set[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wdata_set[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wdata_set[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wdata_set[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wdata_set[7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wdata_set[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \wdata_set[9]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \wready_i_set[0]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \wready_i_set[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of wready_o_vld_get_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wvalid_set[0]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \wvalid_set[0]_i_3\ : label is "soft_lutpair34";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  s_axi_control_BVALID <= \^s_axi_control_bvalid\;
  s_axi_control_RVALID <= \^s_axi_control_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BFB"
    )
        port map (
      I0 => s_axi_control_RREADY,
      I1 => \^s_axi_control_rvalid\,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_control_ARVALID,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_control_RREADY,
      I3 => \^s_axi_control_rvalid\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_control_rvalid\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0FFD1D1"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => \^s_axi_control_bvalid\,
      I2 => s_axi_control_BREADY,
      I3 => s_axi_control_AWVALID,
      I4 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_control_AWVALID,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_control_BREADY,
      I1 => \^s_axi_control_bvalid\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_control_WVALID,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_control_bvalid\,
      R => ap_rst_n_inv
    );
\araddr_set[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \araddr_set_reg_n_0_[0]\,
      O => araddr_set0(0)
    );
\araddr_set[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => \araddr_set_reg_n_0_[1]\,
      O => araddr_set0(1)
    );
\araddr_set[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => \araddr_set_reg_n_0_[2]\,
      O => araddr_set0(2)
    );
\araddr_set[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => \araddr_set_reg_n_0_[3]\,
      O => araddr_set0(3)
    );
\araddr_set[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => \araddr_set_reg_n_0_[4]\,
      O => araddr_set0(4)
    );
\araddr_set[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => \araddr_set_reg_n_0_[5]\,
      O => araddr_set0(5)
    );
\araddr_set[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => \araddr_set_reg_n_0_[6]\,
      O => araddr_set0(6)
    );
\araddr_set[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[5]\,
      I2 => \waddr_reg_n_0_[6]\,
      I3 => \waddr_reg_n_0_[4]\,
      I4 => \awaddr_set[7]_i_3_n_0\,
      O => \araddr_set[7]_i_1_n_0\
    );
\araddr_set[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => \araddr_set_reg_n_0_[7]\,
      O => araddr_set0(7)
    );
\araddr_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \araddr_set[7]_i_1_n_0\,
      D => araddr_set0(0),
      Q => \araddr_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\araddr_set_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \araddr_set[7]_i_1_n_0\,
      D => araddr_set0(1),
      Q => \araddr_set_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
\araddr_set_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \araddr_set[7]_i_1_n_0\,
      D => araddr_set0(2),
      Q => \araddr_set_reg_n_0_[2]\,
      R => ap_rst_n_inv
    );
\araddr_set_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \araddr_set[7]_i_1_n_0\,
      D => araddr_set0(3),
      Q => \araddr_set_reg_n_0_[3]\,
      R => ap_rst_n_inv
    );
\araddr_set_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \araddr_set[7]_i_1_n_0\,
      D => araddr_set0(4),
      Q => \araddr_set_reg_n_0_[4]\,
      R => ap_rst_n_inv
    );
\araddr_set_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \araddr_set[7]_i_1_n_0\,
      D => araddr_set0(5),
      Q => \araddr_set_reg_n_0_[5]\,
      R => ap_rst_n_inv
    );
\araddr_set_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \araddr_set[7]_i_1_n_0\,
      D => araddr_set0(6),
      Q => \araddr_set_reg_n_0_[6]\,
      R => ap_rst_n_inv
    );
\araddr_set_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \araddr_set[7]_i_1_n_0\,
      D => araddr_set0(7),
      Q => \araddr_set_reg_n_0_[7]\,
      R => ap_rst_n_inv
    );
\arready_i_set[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \wvalid_set[0]_i_3_n_0\,
      I3 => \arready_i_set[0]_i_2_n_0\,
      I4 => \awaddr_set[7]_i_3_n_0\,
      I5 => \arready_i_set_reg_n_0_[0]\,
      O => \arready_i_set[0]_i_1_n_0\
    );
\arready_i_set[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[6]\,
      O => \arready_i_set[0]_i_2_n_0\
    );
\arready_i_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \arready_i_set[0]_i_1_n_0\,
      Q => \arready_i_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
arready_o_vld_get_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => ap_rst_n,
      I1 => arready_o_vld_get_i_2_n_0,
      I2 => ar_hs,
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(0),
      O => arready_o_vld_get_i_1_n_0
    );
arready_o_vld_get_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => s_axi_control_ARADDR(3),
      I1 => s_axi_control_ARADDR(7),
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(5),
      I4 => s_axi_control_ARADDR(6),
      O => arready_o_vld_get_i_2_n_0
    );
arready_o_vld_get_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => arready_o_vld_get_i_1_n_0,
      Q => p_7_in(0),
      R => '0'
    );
\arvalid_set[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[6]\,
      I3 => \waddr_reg_n_0_[4]\,
      I4 => \awready_i_set[0]_i_2_n_0\,
      I5 => \arvalid_set_reg_n_0_[0]\,
      O => \arvalid_set[0]_i_1_n_0\
    );
\arvalid_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \arvalid_set[0]_i_1_n_0\,
      Q => \arvalid_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\awaddr_set[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \awaddr_set_reg_n_0_[0]\,
      O => awaddr_set0(0)
    );
\awaddr_set[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => \awaddr_set_reg_n_0_[1]\,
      O => awaddr_set0(1)
    );
\awaddr_set[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => \awaddr_set_reg_n_0_[2]\,
      O => awaddr_set0(2)
    );
\awaddr_set[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => \awaddr_set_reg_n_0_[3]\,
      O => awaddr_set0(3)
    );
\awaddr_set[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => \awaddr_set_reg_n_0_[4]\,
      O => awaddr_set0(4)
    );
\awaddr_set[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => \awaddr_set_reg_n_0_[5]\,
      O => awaddr_set0(5)
    );
\awaddr_set[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => \awaddr_set_reg_n_0_[6]\,
      O => awaddr_set0(6)
    );
\awaddr_set[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[6]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \awaddr_set[7]_i_3_n_0\,
      O => \awaddr_set[7]_i_1_n_0\
    );
\awaddr_set[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => \awaddr_set_reg_n_0_[7]\,
      O => awaddr_set0(7)
    );
\awaddr_set[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => s_axi_control_WVALID,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \waddr_reg_n_0_[7]\,
      O => \awaddr_set[7]_i_3_n_0\
    );
\awaddr_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \awaddr_set[7]_i_1_n_0\,
      D => awaddr_set0(0),
      Q => \awaddr_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\awaddr_set_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \awaddr_set[7]_i_1_n_0\,
      D => awaddr_set0(1),
      Q => \awaddr_set_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
\awaddr_set_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \awaddr_set[7]_i_1_n_0\,
      D => awaddr_set0(2),
      Q => \awaddr_set_reg_n_0_[2]\,
      R => ap_rst_n_inv
    );
\awaddr_set_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \awaddr_set[7]_i_1_n_0\,
      D => awaddr_set0(3),
      Q => \awaddr_set_reg_n_0_[3]\,
      R => ap_rst_n_inv
    );
\awaddr_set_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \awaddr_set[7]_i_1_n_0\,
      D => awaddr_set0(4),
      Q => \awaddr_set_reg_n_0_[4]\,
      R => ap_rst_n_inv
    );
\awaddr_set_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \awaddr_set[7]_i_1_n_0\,
      D => awaddr_set0(5),
      Q => \awaddr_set_reg_n_0_[5]\,
      R => ap_rst_n_inv
    );
\awaddr_set_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \awaddr_set[7]_i_1_n_0\,
      D => awaddr_set0(6),
      Q => \awaddr_set_reg_n_0_[6]\,
      R => ap_rst_n_inv
    );
\awaddr_set_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \awaddr_set[7]_i_1_n_0\,
      D => awaddr_set0(7),
      Q => \awaddr_set_reg_n_0_[7]\,
      R => ap_rst_n_inv
    );
\awready_i_set[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[6]\,
      I3 => \waddr_reg_n_0_[4]\,
      I4 => \awready_i_set[0]_i_2_n_0\,
      I5 => \awready_i_set_reg_n_0_[0]\,
      O => \awready_i_set[0]_i_1_n_0\
    );
\awready_i_set[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[2]\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      I4 => \waddr_reg_n_0_[7]\,
      I5 => \waddr_reg_n_0_[5]\,
      O => \awready_i_set[0]_i_2_n_0\
    );
\awready_i_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \awready_i_set[0]_i_1_n_0\,
      Q => \awready_i_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
awready_o_vld_get_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => ap_rst_n,
      I1 => awready_o_vld_get_i_2_n_0,
      I2 => ar_hs,
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(0),
      O => awready_o_vld_get_i_1_n_0
    );
awready_o_vld_get_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFFFF"
    )
        port map (
      I0 => s_axi_control_ARADDR(3),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(7),
      I3 => s_axi_control_ARADDR(6),
      I4 => s_axi_control_ARADDR(5),
      O => awready_o_vld_get_i_2_n_0
    );
awready_o_vld_get_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => awready_o_vld_get_i_1_n_0,
      Q => p_21_in(0),
      R => '0'
    );
\awvalid_set[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \awvalid_set[0]_i_2_n_0\,
      I3 => \awaddr_set[7]_i_3_n_0\,
      I4 => \awvalid_set_reg_n_0_[0]\,
      O => \awvalid_set[0]_i_1_n_0\
    );
\awvalid_set[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[6]\,
      I3 => \waddr_reg_n_0_[4]\,
      O => \awvalid_set[0]_i_2_n_0\
    );
\awvalid_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \awvalid_set[0]_i_1_n_0\,
      Q => \awvalid_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\bready_set[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[4]\,
      I3 => \waddr_reg_n_0_[6]\,
      I4 => \awready_i_set[0]_i_2_n_0\,
      I5 => \bready_set_reg_n_0_[0]\,
      O => \bready_set[0]_i_1_n_0\
    );
\bready_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \bready_set[0]_i_1_n_0\,
      Q => \bready_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\bvalid_i_set[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[4]\,
      I3 => \wready_i_set[0]_i_2_n_0\,
      I4 => \wready_i_set[0]_i_3_n_0\,
      I5 => \bvalid_i_set_reg_n_0_[0]\,
      O => \bvalid_i_set[0]_i_1_n_0\
    );
\bvalid_i_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \bvalid_i_set[0]_i_1_n_0\,
      Q => \bvalid_i_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1310131310101010"
    )
        port map (
      I0 => \rdata[0]_i_2_n_0\,
      I1 => \rdata[0]_i_3_n_0\,
      I2 => s_axi_control_ARADDR(2),
      I3 => \rdata[0]_i_4_n_0\,
      I4 => \rdata[0]_i_5_n_0\,
      I5 => \rdata[0]_i_6_n_0\,
      O => rdata(0)
    );
\rdata[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010001010000000"
    )
        port map (
      I0 => s_axi_control_ARADDR(7),
      I1 => s_axi_control_ARADDR(6),
      I2 => s_axi_control_ARADDR(5),
      I3 => s_axi_control_ARADDR(4),
      I4 => \wdata_set_reg_n_0_[0]\,
      I5 => \awready_i_set_reg_n_0_[0]\,
      O => \rdata[0]_i_10_n_0\
    );
\rdata[0]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(6),
      I2 => s_axi_control_ARADDR(7),
      O => \rdata[0]_i_11_n_0\
    );
\rdata[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"053FF53F"
    )
        port map (
      I0 => \rready_set_reg_n_0_[0]\,
      I1 => \wvalid_set_reg_n_0_[0]\,
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(7),
      I4 => \rst_n_set_reg_n_0_[0]\,
      O => \rdata[0]_i_12_n_0\
    );
\rdata[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040004040000000"
    )
        port map (
      I0 => s_axi_control_ARADDR(7),
      I1 => s_axi_control_ARADDR(6),
      I2 => s_axi_control_ARADDR(5),
      I3 => s_axi_control_ARADDR(4),
      I4 => \arready_i_set_reg_n_0_[0]\,
      I5 => \araddr_set_reg_n_0_[0]\,
      O => \rdata[0]_i_13_n_0\
    );
\rdata[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(6),
      I2 => s_axi_control_ARADDR(7),
      I3 => \rvalid_i_set_reg_n_0_[0]\,
      I4 => s_axi_control_ARADDR(4),
      O => \rdata[0]_i_14_n_0\
    );
\rdata[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020000FFFFFFFF"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => s_axi_control_ARADDR(5),
      I2 => s_axi_control_ARADDR(6),
      I3 => s_axi_control_ARADDR(7),
      I4 => \awvalid_set_reg_n_0_[0]\,
      I5 => s_axi_control_ARADDR(3),
      O => \rdata[0]_i_15_n_0\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => p_16_in(0),
      I1 => wready_o_vld_get_i_2_n_0,
      I2 => p_7_in(0),
      I3 => arready_o_vld_get_i_2_n_0,
      I4 => p_21_in(0),
      I5 => awready_o_vld_get_i_2_n_0,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_control_ARADDR(1),
      I1 => s_axi_control_ARADDR(0),
      O => \rdata[0]_i_3_n_0\
    );
\rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFA280"
    )
        port map (
      I0 => \rdata[0]_i_7_n_0\,
      I1 => s_axi_control_ARADDR(4),
      I2 => \arvalid_set_reg_n_0_[0]\,
      I3 => \bready_set_reg_n_0_[0]\,
      I4 => s_axi_control_ARADDR(3),
      I5 => \rdata[0]_i_8_n_0\,
      O => \rdata[0]_i_4_n_0\
    );
\rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0D0D0D000D0D0D"
    )
        port map (
      I0 => \awaddr_set_reg_n_0_[0]\,
      I1 => \rdata[0]_i_9_n_0\,
      I2 => \rdata[0]_i_10_n_0\,
      I3 => \rdata[0]_i_11_n_0\,
      I4 => \wready_i_set_reg_n_0_[0]\,
      I5 => s_axi_control_ARADDR(4),
      O => \rdata[0]_i_5_n_0\
    );
\rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF04"
    )
        port map (
      I0 => \rdata[0]_i_12_n_0\,
      I1 => s_axi_control_ARADDR(5),
      I2 => s_axi_control_ARADDR(6),
      I3 => \rdata[0]_i_13_n_0\,
      I4 => \rdata[0]_i_14_n_0\,
      I5 => \rdata[0]_i_15_n_0\,
      O => \rdata[0]_i_6_n_0\
    );
\rdata[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(6),
      I2 => s_axi_control_ARADDR(7),
      O => \rdata[0]_i_7_n_0\
    );
\rdata[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \bvalid_i_set_reg_n_0_[0]\,
      I1 => s_axi_control_ARADDR(5),
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(7),
      I4 => s_axi_control_ARADDR(6),
      O => \rdata[0]_i_8_n_0\
    );
\rdata[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => s_axi_control_ARADDR(5),
      I2 => s_axi_control_ARADDR(6),
      I3 => s_axi_control_ARADDR(7),
      O => \rdata[0]_i_9_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \wdata_set_reg_n_0_[1]\,
      I2 => \araddr_set_reg_n_0_[1]\,
      I3 => \rdata[7]_i_3_n_0\,
      I4 => \awaddr_set_reg_n_0_[1]\,
      I5 => \rdata[7]_i_2_n_0\,
      O => rdata(1)
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \wdata_set_reg_n_0_[2]\,
      I2 => \araddr_set_reg_n_0_[2]\,
      I3 => \rdata[7]_i_3_n_0\,
      I4 => \awaddr_set_reg_n_0_[2]\,
      I5 => \rdata[7]_i_2_n_0\,
      O => rdata(2)
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => s_axi_control_ARVALID,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_control_ARVALID,
      O => ar_hs
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFFFFFFF"
    )
        port map (
      I0 => s_axi_control_ARADDR(6),
      I1 => s_axi_control_ARADDR(7),
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(3),
      I4 => \rdata[31]_i_4_n_0\,
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[31]_i_3_n_0\
    );
\rdata[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axi_control_ARADDR(2),
      I1 => s_axi_control_ARADDR(0),
      I2 => s_axi_control_ARADDR(1),
      O => \rdata[31]_i_4_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \rdata[7]_i_2_n_0\,
      I1 => \awaddr_set_reg_n_0_[3]\,
      I2 => \araddr_set_reg_n_0_[3]\,
      I3 => \rdata[7]_i_3_n_0\,
      I4 => \wdata_set_reg_n_0_[3]\,
      I5 => \rdata[31]_i_3_n_0\,
      O => rdata(3)
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \rdata[7]_i_3_n_0\,
      I1 => \araddr_set_reg_n_0_[4]\,
      I2 => \wdata_set_reg_n_0_[4]\,
      I3 => \rdata[31]_i_3_n_0\,
      I4 => \awaddr_set_reg_n_0_[4]\,
      I5 => \rdata[7]_i_2_n_0\,
      O => rdata(4)
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \rdata[7]_i_2_n_0\,
      I1 => \awaddr_set_reg_n_0_[5]\,
      I2 => \araddr_set_reg_n_0_[5]\,
      I3 => \rdata[7]_i_3_n_0\,
      I4 => \wdata_set_reg_n_0_[5]\,
      I5 => \rdata[31]_i_3_n_0\,
      O => rdata(5)
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \wdata_set_reg_n_0_[6]\,
      I2 => \araddr_set_reg_n_0_[6]\,
      I3 => \rdata[7]_i_3_n_0\,
      I4 => \awaddr_set_reg_n_0_[6]\,
      I5 => \rdata[7]_i_2_n_0\,
      O => rdata(6)
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \wdata_set_reg_n_0_[7]\,
      I2 => \awaddr_set_reg_n_0_[7]\,
      I3 => \rdata[7]_i_2_n_0\,
      I4 => \araddr_set_reg_n_0_[7]\,
      I5 => \rdata[7]_i_3_n_0\,
      O => rdata(7)
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(6),
      I2 => s_axi_control_ARADDR(7),
      I3 => s_axi_control_ARADDR(4),
      I4 => s_axi_control_ARADDR(3),
      I5 => \rdata[31]_i_4_n_0\,
      O => \rdata[7]_i_2_n_0\
    );
\rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBFFFFFFFFF"
    )
        port map (
      I0 => s_axi_control_ARADDR(7),
      I1 => s_axi_control_ARADDR(6),
      I2 => s_axi_control_ARADDR(5),
      I3 => \rdata[31]_i_4_n_0\,
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(3),
      O => \rdata[7]_i_3_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_control_RDATA(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[10]\,
      Q => s_axi_control_RDATA(10),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[11]\,
      Q => s_axi_control_RDATA(11),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[12]\,
      Q => s_axi_control_RDATA(12),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[13]\,
      Q => s_axi_control_RDATA(13),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[14]\,
      Q => s_axi_control_RDATA(14),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[15]\,
      Q => s_axi_control_RDATA(15),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[16]\,
      Q => s_axi_control_RDATA(16),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[17]\,
      Q => s_axi_control_RDATA(17),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[18]\,
      Q => s_axi_control_RDATA(18),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[19]\,
      Q => s_axi_control_RDATA(19),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(1),
      Q => s_axi_control_RDATA(1),
      R => '0'
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[20]\,
      Q => s_axi_control_RDATA(20),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[21]\,
      Q => s_axi_control_RDATA(21),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[22]\,
      Q => s_axi_control_RDATA(22),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[23]\,
      Q => s_axi_control_RDATA(23),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[24]\,
      Q => s_axi_control_RDATA(24),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[25]\,
      Q => s_axi_control_RDATA(25),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[26]\,
      Q => s_axi_control_RDATA(26),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[27]\,
      Q => s_axi_control_RDATA(27),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[28]\,
      Q => s_axi_control_RDATA(28),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[29]\,
      Q => s_axi_control_RDATA(29),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(2),
      Q => s_axi_control_RDATA(2),
      R => '0'
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[30]\,
      Q => s_axi_control_RDATA(30),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[31]\,
      Q => s_axi_control_RDATA(31),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_control_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(4),
      Q => s_axi_control_RDATA(4),
      R => '0'
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(5),
      Q => s_axi_control_RDATA(5),
      R => '0'
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(6),
      Q => s_axi_control_RDATA(6),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(7),
      Q => s_axi_control_RDATA(7),
      R => '0'
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[8]\,
      Q => s_axi_control_RDATA(8),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \wdata_set_reg_n_0_[9]\,
      Q => s_axi_control_RDATA(9),
      R => \rdata[31]_i_1_n_0\
    );
\rready_set[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \rready_set[0]_i_2_n_0\,
      I3 => \rvalid_i_set[0]_i_3_n_0\,
      I4 => \rready_set_reg_n_0_[0]\,
      O => \rready_set[0]_i_1_n_0\
    );
\rready_set[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[7]\,
      I2 => \waddr_reg_n_0_[6]\,
      I3 => \waddr_reg_n_0_[5]\,
      I4 => \waddr_reg_n_0_[3]\,
      O => \rready_set[0]_i_2_n_0\
    );
\rready_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \rready_set[0]_i_1_n_0\,
      Q => \rready_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\rst_n_set[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \rst_n_set[0]_i_2_n_0\,
      I3 => \rvalid_i_set[0]_i_3_n_0\,
      I4 => \rst_n_set_reg_n_0_[0]\,
      O => \rst_n_set[0]_i_1_n_0\
    );
\rst_n_set[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[7]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[6]\,
      I3 => \waddr_reg_n_0_[5]\,
      I4 => \waddr_reg_n_0_[3]\,
      O => \rst_n_set[0]_i_2_n_0\
    );
\rst_n_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \rst_n_set[0]_i_1_n_0\,
      Q => \rst_n_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\rvalid_i_set[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \rvalid_i_set[0]_i_2_n_0\,
      I3 => \rvalid_i_set[0]_i_3_n_0\,
      I4 => \rvalid_i_set_reg_n_0_[0]\,
      O => \rvalid_i_set[0]_i_1_n_0\
    );
\rvalid_i_set[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[7]\,
      I2 => \waddr_reg_n_0_[5]\,
      I3 => \waddr_reg_n_0_[6]\,
      I4 => \waddr_reg_n_0_[4]\,
      O => \rvalid_i_set[0]_i_2_n_0\
    );
\rvalid_i_set[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_control_WVALID,
      I2 => \waddr_reg_n_0_[2]\,
      O => \rvalid_i_set[0]_i_3_n_0\
    );
\rvalid_i_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \rvalid_i_set[0]_i_1_n_0\,
      Q => \rvalid_i_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\waddr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      O => waddr
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(0),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(1),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(2),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(3),
      Q => \waddr_reg_n_0_[5]\,
      R => '0'
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(4),
      Q => \waddr_reg_n_0_[6]\,
      R => '0'
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(5),
      Q => \waddr_reg_n_0_[7]\,
      R => '0'
    );
\wdata_set[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \wdata_set_reg_n_0_[0]\,
      O => \wdata_set[0]_i_1_n_0\
    );
\wdata_set[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => \wdata_set_reg_n_0_[10]\,
      O => \wdata_set[10]_i_1_n_0\
    );
\wdata_set[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => \wdata_set_reg_n_0_[11]\,
      O => \wdata_set[11]_i_1_n_0\
    );
\wdata_set[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => \wdata_set_reg_n_0_[12]\,
      O => \wdata_set[12]_i_1_n_0\
    );
\wdata_set[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => \wdata_set_reg_n_0_[13]\,
      O => \wdata_set[13]_i_1_n_0\
    );
\wdata_set[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => \wdata_set_reg_n_0_[14]\,
      O => \wdata_set[14]_i_1_n_0\
    );
\wdata_set[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => \wdata_set_reg_n_0_[15]\,
      O => \wdata_set[15]_i_1_n_0\
    );
\wdata_set[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => \wdata_set_reg_n_0_[16]\,
      O => \wdata_set[16]_i_1_n_0\
    );
\wdata_set[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => \wdata_set_reg_n_0_[17]\,
      O => \wdata_set[17]_i_1_n_0\
    );
\wdata_set[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => \wdata_set_reg_n_0_[18]\,
      O => \wdata_set[18]_i_1_n_0\
    );
\wdata_set[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => \wdata_set_reg_n_0_[19]\,
      O => \wdata_set[19]_i_1_n_0\
    );
\wdata_set[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => \wdata_set_reg_n_0_[1]\,
      O => \wdata_set[1]_i_1_n_0\
    );
\wdata_set[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => \wdata_set_reg_n_0_[20]\,
      O => \wdata_set[20]_i_1_n_0\
    );
\wdata_set[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => \wdata_set_reg_n_0_[21]\,
      O => \wdata_set[21]_i_1_n_0\
    );
\wdata_set[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(22),
      I1 => s_axi_control_WSTRB(2),
      I2 => \wdata_set_reg_n_0_[22]\,
      O => \wdata_set[22]_i_1_n_0\
    );
\wdata_set[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(23),
      I1 => s_axi_control_WSTRB(2),
      I2 => \wdata_set_reg_n_0_[23]\,
      O => \wdata_set[23]_i_1_n_0\
    );
\wdata_set[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(24),
      I1 => s_axi_control_WSTRB(3),
      I2 => \wdata_set_reg_n_0_[24]\,
      O => \wdata_set[24]_i_1_n_0\
    );
\wdata_set[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(25),
      I1 => s_axi_control_WSTRB(3),
      I2 => \wdata_set_reg_n_0_[25]\,
      O => \wdata_set[25]_i_1_n_0\
    );
\wdata_set[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(26),
      I1 => s_axi_control_WSTRB(3),
      I2 => \wdata_set_reg_n_0_[26]\,
      O => \wdata_set[26]_i_1_n_0\
    );
\wdata_set[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(27),
      I1 => s_axi_control_WSTRB(3),
      I2 => \wdata_set_reg_n_0_[27]\,
      O => \wdata_set[27]_i_1_n_0\
    );
\wdata_set[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(28),
      I1 => s_axi_control_WSTRB(3),
      I2 => \wdata_set_reg_n_0_[28]\,
      O => \wdata_set[28]_i_1_n_0\
    );
\wdata_set[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(29),
      I1 => s_axi_control_WSTRB(3),
      I2 => \wdata_set_reg_n_0_[29]\,
      O => \wdata_set[29]_i_1_n_0\
    );
\wdata_set[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => \wdata_set_reg_n_0_[2]\,
      O => \wdata_set[2]_i_1_n_0\
    );
\wdata_set[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(30),
      I1 => s_axi_control_WSTRB(3),
      I2 => \wdata_set_reg_n_0_[30]\,
      O => \wdata_set[30]_i_1_n_0\
    );
\wdata_set[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => \awaddr_set[7]_i_3_n_0\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[6]\,
      I4 => \waddr_reg_n_0_[4]\,
      O => \wdata_set[31]_i_1_n_0\
    );
\wdata_set[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(31),
      I1 => s_axi_control_WSTRB(3),
      I2 => \wdata_set_reg_n_0_[31]\,
      O => \wdata_set[31]_i_2_n_0\
    );
\wdata_set[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => \wdata_set_reg_n_0_[3]\,
      O => \wdata_set[3]_i_1_n_0\
    );
\wdata_set[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => \wdata_set_reg_n_0_[4]\,
      O => \wdata_set[4]_i_1_n_0\
    );
\wdata_set[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => \wdata_set_reg_n_0_[5]\,
      O => \wdata_set[5]_i_1_n_0\
    );
\wdata_set[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => \wdata_set_reg_n_0_[6]\,
      O => \wdata_set[6]_i_1_n_0\
    );
\wdata_set[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => \wdata_set_reg_n_0_[7]\,
      O => \wdata_set[7]_i_1_n_0\
    );
\wdata_set[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => \wdata_set_reg_n_0_[8]\,
      O => \wdata_set[8]_i_1_n_0\
    );
\wdata_set[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => \wdata_set_reg_n_0_[9]\,
      O => \wdata_set[9]_i_1_n_0\
    );
\wdata_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[0]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[10]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[10]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[11]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[11]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[12]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[12]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[13]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[13]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[14]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[14]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[15]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[15]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[16]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[16]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[17]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[17]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[18]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[18]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[19]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[19]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[1]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[20]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[20]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[21]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[21]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[22]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[22]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[23]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[23]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[24]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[24]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[25]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[25]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[26]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[26]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[27]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[27]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[28]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[28]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[29]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[29]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[2]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[2]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[30]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[30]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[31]_i_2_n_0\,
      Q => \wdata_set_reg_n_0_[31]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[3]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[3]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[4]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[4]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[5]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[5]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[6]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[6]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[7]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[7]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[8]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[8]\,
      R => ap_rst_n_inv
    );
\wdata_set_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \wdata_set[31]_i_1_n_0\,
      D => \wdata_set[9]_i_1_n_0\,
      Q => \wdata_set_reg_n_0_[9]\,
      R => ap_rst_n_inv
    );
\wready_i_set[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[4]\,
      I3 => \wready_i_set[0]_i_2_n_0\,
      I4 => \wready_i_set[0]_i_3_n_0\,
      I5 => \wready_i_set_reg_n_0_[0]\,
      O => \wready_i_set[0]_i_1_n_0\
    );
\wready_i_set[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \waddr_reg_n_0_[6]\,
      I1 => \waddr_reg_n_0_[5]\,
      O => \wready_i_set[0]_i_2_n_0\
    );
\wready_i_set[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \waddr_reg_n_0_[7]\,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_control_WVALID,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => \waddr_reg_n_0_[3]\,
      O => \wready_i_set[0]_i_3_n_0\
    );
\wready_i_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \wready_i_set[0]_i_1_n_0\,
      Q => \wready_i_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
wready_o_vld_get_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => ap_rst_n,
      I1 => wready_o_vld_get_i_2_n_0,
      I2 => ar_hs,
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(0),
      O => wready_o_vld_get_i_1_n_0
    );
wready_o_vld_get_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => s_axi_control_ARADDR(3),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(7),
      I3 => s_axi_control_ARADDR(6),
      I4 => s_axi_control_ARADDR(5),
      O => wready_o_vld_get_i_2_n_0
    );
wready_o_vld_get_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => wready_o_vld_get_i_1_n_0,
      Q => p_16_in(0),
      R => '0'
    );
\wvalid_set[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \wvalid_set[0]_i_2_n_0\,
      I3 => \wvalid_set[0]_i_3_n_0\,
      I4 => \awaddr_set[7]_i_3_n_0\,
      I5 => \wvalid_set_reg_n_0_[0]\,
      O => \wvalid_set[0]_i_1_n_0\
    );
\wvalid_set[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[6]\,
      O => \wvalid_set[0]_i_2_n_0\
    );
\wvalid_set[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[5]\,
      O => \wvalid_set[0]_i_3_n_0\
    );
\wvalid_set_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \wvalid_set[0]_i_1_n_0\,
      Q => \wvalid_set_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip : entity is 8;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip : entity is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip : entity is "nmp_axi4l_ip";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip : entity is "yes";
end nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip;

architecture STRUCTURE of nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip is
  signal \<const0>\ : STD_LOGIC;
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
control_s_axi_U: entity work.nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip_control_s_axi
     port map (
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_control_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_control_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_control_WREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      s_axi_control_ARADDR(7 downto 0) => s_axi_control_ARADDR(7 downto 0),
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(5 downto 0) => s_axi_control_AWADDR(7 downto 2),
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nmp_nmp_axi4l_ip_0_1 is
  port (
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of nmp_nmp_axi4l_ip_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of nmp_nmp_axi4l_ip_0_1 : entity is "nmp_nmp_axi4l_ip_0_1,nmp_axi4l_ip,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of nmp_nmp_axi4l_ip_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of nmp_nmp_axi4l_ip_0_1 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of nmp_nmp_axi4l_ip_0_1 : entity is "nmp_axi4l_ip,Vivado 2024.1";
  attribute hls_module : string;
  attribute hls_module of nmp_nmp_axi4l_ip_0_1 : entity is "yes";
end nmp_nmp_axi4l_ip_0_1;

architecture STRUCTURE of nmp_nmp_axi4l_ip_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s_axi_control_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_control_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of inst : label is 8;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN nmp_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  attribute X_INTERFACE_INFO of s_axi_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  attribute X_INTERFACE_INFO of s_axi_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  attribute X_INTERFACE_INFO of s_axi_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  attribute X_INTERFACE_INFO of s_axi_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  attribute X_INTERFACE_INFO of s_axi_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  attribute X_INTERFACE_INFO of s_axi_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  attribute X_INTERFACE_INFO of s_axi_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  attribute X_INTERFACE_INFO of s_axi_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  attribute X_INTERFACE_INFO of s_axi_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  attribute X_INTERFACE_PARAMETER of s_axi_control_WVALID : signal is "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 8, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN nmp_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.nmp_nmp_axi4l_ip_0_1_nmp_axi4l_ip
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      s_axi_control_ARADDR(7 downto 0) => s_axi_control_ARADDR(7 downto 0),
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(7 downto 2) => s_axi_control_AWADDR(7 downto 2),
      s_axi_control_AWADDR(1 downto 0) => B"00",
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BRESP(1 downto 0) => NLW_inst_s_axi_control_BRESP_UNCONNECTED(1 downto 0),
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RRESP(1 downto 0) => NLW_inst_s_axi_control_RRESP_UNCONNECTED(1 downto 0),
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
end STRUCTURE;
