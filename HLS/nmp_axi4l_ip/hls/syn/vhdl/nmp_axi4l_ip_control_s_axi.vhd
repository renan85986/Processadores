-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
-- Tool Version Limit: 2024.05
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- 
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity nmp_axi4l_ip_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 8;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    clk                   :in   STD_LOGIC;
    rst                   :in   STD_LOGIC;
    awaddr                :out  STD_LOGIC_VECTOR(7 downto 0);
    awvalid               :out  STD_LOGIC_VECTOR(0 downto 0);
    awready_i             :out  STD_LOGIC_VECTOR(0 downto 0);
    awready_o             :in   STD_LOGIC_VECTOR(0 downto 0);
    awready_o_ap_vld      :in   STD_LOGIC;
    wdata                 :out  STD_LOGIC_VECTOR(31 downto 0);
    wvalid                :out  STD_LOGIC_VECTOR(0 downto 0);
    wready_i              :out  STD_LOGIC_VECTOR(0 downto 0);
    wready_o              :in   STD_LOGIC_VECTOR(0 downto 0);
    wready_o_ap_vld       :in   STD_LOGIC;
    bvalid_i              :out  STD_LOGIC_VECTOR(0 downto 0);
    bvalid_o              :in   STD_LOGIC_VECTOR(0 downto 0);
    bvalid_o_ap_vld       :in   STD_LOGIC;
    bready                :out  STD_LOGIC_VECTOR(0 downto 0);
    araddr                :out  STD_LOGIC_VECTOR(7 downto 0);
    arvalid               :out  STD_LOGIC_VECTOR(0 downto 0);
    arready_i             :out  STD_LOGIC_VECTOR(0 downto 0);
    arready_o             :in   STD_LOGIC_VECTOR(0 downto 0);
    arready_o_ap_vld      :in   STD_LOGIC;
    rdata                 :in   STD_LOGIC_VECTOR(31 downto 0);
    rdata_ap_vld          :in   STD_LOGIC;
    rvalid_i              :out  STD_LOGIC_VECTOR(0 downto 0);
    rvalid_o              :in   STD_LOGIC_VECTOR(0 downto 0);
    rvalid_o_ap_vld       :in   STD_LOGIC;
    rready                :out  STD_LOGIC_VECTOR(0 downto 0);
    rst_n                 :out  STD_LOGIC_VECTOR(0 downto 0)
);
end entity nmp_axi4l_ip_control_s_axi;

-- ------------------------Address Info-------------------
-- Protocol Used: ap_ctrl_none
--
-- 0x00 : reserved
-- 0x04 : reserved
-- 0x08 : reserved
-- 0x0c : reserved
-- 0x10 : Data signal of awaddr
--        bit 7~0 - awaddr[7:0] (Read/Write)
--        others  - reserved
-- 0x14 : reserved
-- 0x18 : Data signal of awvalid
--        bit 0  - awvalid[0] (Read/Write)
--        others - reserved
-- 0x1c : reserved
-- 0x20 : Data signal of awready_i
--        bit 0  - awready_i[0] (Read/Write)
--        others - reserved
-- 0x24 : reserved
-- 0x28 : Data signal of awready_o
--        bit 0  - awready_o[0] (Read)
--        others - reserved
-- 0x2c : Control signal of awready_o
--        bit 0  - awready_o_ap_vld (Read/COR)
--        others - reserved
-- 0x30 : Data signal of wdata
--        bit 31~0 - wdata[31:0] (Read/Write)
-- 0x34 : reserved
-- 0x38 : Data signal of wvalid
--        bit 0  - wvalid[0] (Read/Write)
--        others - reserved
-- 0x3c : reserved
-- 0x40 : Data signal of wready_i
--        bit 0  - wready_i[0] (Read/Write)
--        others - reserved
-- 0x44 : reserved
-- 0x48 : Data signal of wready_o
--        bit 0  - wready_o[0] (Read)
--        others - reserved
-- 0x4c : Control signal of wready_o
--        bit 0  - wready_o_ap_vld (Read/COR)
--        others - reserved
-- 0x50 : Data signal of bvalid_i
--        bit 0  - bvalid_i[0] (Read/Write)
--        others - reserved
-- 0x54 : reserved
-- 0x58 : Data signal of bvalid_o
--        bit 0  - bvalid_o[0] (Read)
--        others - reserved
-- 0x5c : Control signal of bvalid_o
--        bit 0  - bvalid_o_ap_vld (Read/COR)
--        others - reserved
-- 0x60 : Data signal of bready
--        bit 0  - bready[0] (Read/Write)
--        others - reserved
-- 0x64 : reserved
-- 0x68 : Data signal of araddr
--        bit 7~0 - araddr[7:0] (Read/Write)
--        others  - reserved
-- 0x6c : reserved
-- 0x70 : Data signal of arvalid
--        bit 0  - arvalid[0] (Read/Write)
--        others - reserved
-- 0x74 : reserved
-- 0x78 : Data signal of arready_i
--        bit 0  - arready_i[0] (Read/Write)
--        others - reserved
-- 0x7c : reserved
-- 0x80 : Data signal of arready_o
--        bit 0  - arready_o[0] (Read)
--        others - reserved
-- 0x84 : Control signal of arready_o
--        bit 0  - arready_o_ap_vld (Read/COR)
--        others - reserved
-- 0x88 : Data signal of rdata
--        bit 31~0 - rdata[31:0] (Read)
-- 0x8c : Control signal of rdata
--        bit 0  - rdata_ap_vld (Read/COR)
--        others - reserved
-- 0x98 : Data signal of rvalid_i
--        bit 0  - rvalid_i[0] (Read/Write)
--        others - reserved
-- 0x9c : reserved
-- 0xa0 : Data signal of rvalid_o
--        bit 0  - rvalid_o[0] (Read)
--        others - reserved
-- 0xa4 : Control signal of rvalid_o
--        bit 0  - rvalid_o_ap_vld (Read/COR)
--        others - reserved
-- 0xa8 : Data signal of rready
--        bit 0  - rready[0] (Read/Write)
--        others - reserved
-- 0xac : reserved
-- 0xb8 : Data signal of rst_n
--        bit 0  - rst_n[0] (Read/Write)
--        others - reserved
-- 0xbc : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of nmp_axi4l_ip_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AWADDR_DATA_0    : INTEGER := 16#10#;
    constant ADDR_AWADDR_CTRL      : INTEGER := 16#14#;
    constant ADDR_AWVALID_DATA_0   : INTEGER := 16#18#;
    constant ADDR_AWVALID_CTRL     : INTEGER := 16#1c#;
    constant ADDR_AWREADY_I_DATA_0 : INTEGER := 16#20#;
    constant ADDR_AWREADY_I_CTRL   : INTEGER := 16#24#;
    constant ADDR_AWREADY_O_DATA_0 : INTEGER := 16#28#;
    constant ADDR_AWREADY_O_CTRL   : INTEGER := 16#2c#;
    constant ADDR_WDATA_DATA_0     : INTEGER := 16#30#;
    constant ADDR_WDATA_CTRL       : INTEGER := 16#34#;
    constant ADDR_WVALID_DATA_0    : INTEGER := 16#38#;
    constant ADDR_WVALID_CTRL      : INTEGER := 16#3c#;
    constant ADDR_WREADY_I_DATA_0  : INTEGER := 16#40#;
    constant ADDR_WREADY_I_CTRL    : INTEGER := 16#44#;
    constant ADDR_WREADY_O_DATA_0  : INTEGER := 16#48#;
    constant ADDR_WREADY_O_CTRL    : INTEGER := 16#4c#;
    constant ADDR_BVALID_I_DATA_0  : INTEGER := 16#50#;
    constant ADDR_BVALID_I_CTRL    : INTEGER := 16#54#;
    constant ADDR_BVALID_O_DATA_0  : INTEGER := 16#58#;
    constant ADDR_BVALID_O_CTRL    : INTEGER := 16#5c#;
    constant ADDR_BREADY_DATA_0    : INTEGER := 16#60#;
    constant ADDR_BREADY_CTRL      : INTEGER := 16#64#;
    constant ADDR_ARADDR_DATA_0    : INTEGER := 16#68#;
    constant ADDR_ARADDR_CTRL      : INTEGER := 16#6c#;
    constant ADDR_ARVALID_DATA_0   : INTEGER := 16#70#;
    constant ADDR_ARVALID_CTRL     : INTEGER := 16#74#;
    constant ADDR_ARREADY_I_DATA_0 : INTEGER := 16#78#;
    constant ADDR_ARREADY_I_CTRL   : INTEGER := 16#7c#;
    constant ADDR_ARREADY_O_DATA_0 : INTEGER := 16#80#;
    constant ADDR_ARREADY_O_CTRL   : INTEGER := 16#84#;
    constant ADDR_RDATA_DATA_0     : INTEGER := 16#88#;
    constant ADDR_RDATA_CTRL       : INTEGER := 16#8c#;
    constant ADDR_RVALID_I_DATA_0  : INTEGER := 16#98#;
    constant ADDR_RVALID_I_CTRL    : INTEGER := 16#9c#;
    constant ADDR_RVALID_O_DATA_0  : INTEGER := 16#a0#;
    constant ADDR_RVALID_O_CTRL    : INTEGER := 16#a4#;
    constant ADDR_RREADY_DATA_0    : INTEGER := 16#a8#;
    constant ADDR_RREADY_CTRL      : INTEGER := 16#ac#;
    constant ADDR_RST_N_DATA_0     : INTEGER := 16#b8#;
    constant ADDR_RST_N_CTRL       : INTEGER := 16#bc#;
    constant ADDR_BITS         : INTEGER := 8;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_awaddr          : UNSIGNED(7 downto 0) := (others => '0');
    signal awaddr_set          : UNSIGNED(7 downto 0) := (others => '0');
    signal int_awvalid         : UNSIGNED(0 downto 0) := (others => '0');
    signal awvalid_set         : UNSIGNED(0 downto 0) := (others => '0');
    signal int_awready_i       : UNSIGNED(0 downto 0) := (others => '0');
    signal awready_i_set       : UNSIGNED(0 downto 0) := (others => '0');
    signal int_awready_o_ap_vld : STD_LOGIC;
    signal int_awready_o       : UNSIGNED(0 downto 0) := (others => '0');
    signal awready_o_get       : UNSIGNED(0 downto 0) := (others => '0');
    signal awready_o_vld_ext   : STD_LOGIC := '0';
    signal awready_o_vld_get   : STD_LOGIC := '0';
    signal int_wdata           : UNSIGNED(31 downto 0) := (others => '0');
    signal wdata_set           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_wvalid          : UNSIGNED(0 downto 0) := (others => '0');
    signal wvalid_set          : UNSIGNED(0 downto 0) := (others => '0');
    signal int_wready_i        : UNSIGNED(0 downto 0) := (others => '0');
    signal wready_i_set        : UNSIGNED(0 downto 0) := (others => '0');
    signal int_wready_o_ap_vld : STD_LOGIC;
    signal int_wready_o        : UNSIGNED(0 downto 0) := (others => '0');
    signal wready_o_get        : UNSIGNED(0 downto 0) := (others => '0');
    signal wready_o_vld_ext    : STD_LOGIC := '0';
    signal wready_o_vld_get    : STD_LOGIC := '0';
    signal int_bvalid_i        : UNSIGNED(0 downto 0) := (others => '0');
    signal bvalid_i_set        : UNSIGNED(0 downto 0) := (others => '0');
    signal int_bvalid_o_ap_vld : STD_LOGIC;
    signal int_bvalid_o        : UNSIGNED(0 downto 0) := (others => '0');
    signal bvalid_o_get        : UNSIGNED(0 downto 0) := (others => '0');
    signal bvalid_o_vld_ext    : STD_LOGIC := '0';
    signal bvalid_o_vld_get    : STD_LOGIC := '0';
    signal int_bready          : UNSIGNED(0 downto 0) := (others => '0');
    signal bready_set          : UNSIGNED(0 downto 0) := (others => '0');
    signal int_araddr          : UNSIGNED(7 downto 0) := (others => '0');
    signal araddr_set          : UNSIGNED(7 downto 0) := (others => '0');
    signal int_arvalid         : UNSIGNED(0 downto 0) := (others => '0');
    signal arvalid_set         : UNSIGNED(0 downto 0) := (others => '0');
    signal int_arready_i       : UNSIGNED(0 downto 0) := (others => '0');
    signal arready_i_set       : UNSIGNED(0 downto 0) := (others => '0');
    signal int_arready_o_ap_vld : STD_LOGIC;
    signal int_arready_o       : UNSIGNED(0 downto 0) := (others => '0');
    signal arready_o_get       : UNSIGNED(0 downto 0) := (others => '0');
    signal arready_o_vld_ext   : STD_LOGIC := '0';
    signal arready_o_vld_get   : STD_LOGIC := '0';
    signal int_rdata_ap_vld    : STD_LOGIC;
    signal int_rdata           : UNSIGNED(31 downto 0) := (others => '0');
    signal rdata_get           : UNSIGNED(31 downto 0) := (others => '0');
    signal rdata_vld_ext       : STD_LOGIC := '0';
    signal rdata_vld_get       : STD_LOGIC := '0';
    signal int_rvalid_i        : UNSIGNED(0 downto 0) := (others => '0');
    signal rvalid_i_set        : UNSIGNED(0 downto 0) := (others => '0');
    signal int_rvalid_o_ap_vld : STD_LOGIC;
    signal int_rvalid_o        : UNSIGNED(0 downto 0) := (others => '0');
    signal rvalid_o_get        : UNSIGNED(0 downto 0) := (others => '0');
    signal rvalid_o_vld_ext    : STD_LOGIC := '0';
    signal rvalid_o_vld_get    : STD_LOGIC := '0';
    signal int_rready          : UNSIGNED(0 downto 0) := (others => '0');
    signal rready_set          : UNSIGNED(0 downto 0) := (others => '0');
    signal int_rst_n           : UNSIGNED(0 downto 0) := (others => '0');
    signal rst_n_set           : UNSIGNED(0 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 2) & (1 downto 0 => '0'));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AWADDR_DATA_0 =>
                        rdata_data <= RESIZE(awaddr_set(7 downto 0), 32);
                    when ADDR_AWVALID_DATA_0 =>
                        rdata_data <= RESIZE(awvalid_set(0 downto 0), 32);
                    when ADDR_AWREADY_I_DATA_0 =>
                        rdata_data <= RESIZE(awready_i_set(0 downto 0), 32);
                    when ADDR_AWREADY_O_DATA_0 =>
                        rdata_data <= RESIZE(awready_o_get(0 downto 0), 32);
                    when ADDR_AWREADY_O_CTRL =>
                        rdata_data(0) <= awready_o_vld_get;
                    when ADDR_WDATA_DATA_0 =>
                        rdata_data <= RESIZE(wdata_set(31 downto 0), 32);
                    when ADDR_WVALID_DATA_0 =>
                        rdata_data <= RESIZE(wvalid_set(0 downto 0), 32);
                    when ADDR_WREADY_I_DATA_0 =>
                        rdata_data <= RESIZE(wready_i_set(0 downto 0), 32);
                    when ADDR_WREADY_O_DATA_0 =>
                        rdata_data <= RESIZE(wready_o_get(0 downto 0), 32);
                    when ADDR_WREADY_O_CTRL =>
                        rdata_data(0) <= wready_o_vld_get;
                    when ADDR_BVALID_I_DATA_0 =>
                        rdata_data <= RESIZE(bvalid_i_set(0 downto 0), 32);
                    when ADDR_BVALID_O_DATA_0 =>
                        rdata_data <= RESIZE(bvalid_o_get(0 downto 0), 32);
                    when ADDR_BVALID_O_CTRL =>
                        rdata_data(0) <= bvalid_o_vld_get;
                    when ADDR_BREADY_DATA_0 =>
                        rdata_data <= RESIZE(bready_set(0 downto 0), 32);
                    when ADDR_ARADDR_DATA_0 =>
                        rdata_data <= RESIZE(araddr_set(7 downto 0), 32);
                    when ADDR_ARVALID_DATA_0 =>
                        rdata_data <= RESIZE(arvalid_set(0 downto 0), 32);
                    when ADDR_ARREADY_I_DATA_0 =>
                        rdata_data <= RESIZE(arready_i_set(0 downto 0), 32);
                    when ADDR_ARREADY_O_DATA_0 =>
                        rdata_data <= RESIZE(arready_o_get(0 downto 0), 32);
                    when ADDR_ARREADY_O_CTRL =>
                        rdata_data(0) <= arready_o_vld_get;
                    when ADDR_RDATA_DATA_0 =>
                        rdata_data <= RESIZE(rdata_get(31 downto 0), 32);
                    when ADDR_RDATA_CTRL =>
                        rdata_data(0) <= rdata_vld_get;
                    when ADDR_RVALID_I_DATA_0 =>
                        rdata_data <= RESIZE(rvalid_i_set(0 downto 0), 32);
                    when ADDR_RVALID_O_DATA_0 =>
                        rdata_data <= RESIZE(rvalid_o_get(0 downto 0), 32);
                    when ADDR_RVALID_O_CTRL =>
                        rdata_data(0) <= rvalid_o_vld_get;
                    when ADDR_RREADY_DATA_0 =>
                        rdata_data <= RESIZE(rready_set(0 downto 0), 32);
                    when ADDR_RST_N_DATA_0 =>
                        rdata_data <= RESIZE(rst_n_set(0 downto 0), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    awaddr               <= STD_LOGIC_VECTOR(int_awaddr);
    awvalid              <= STD_LOGIC_VECTOR(int_awvalid);
    awready_i            <= STD_LOGIC_VECTOR(int_awready_i);
    wdata                <= STD_LOGIC_VECTOR(int_wdata);
    wvalid               <= STD_LOGIC_VECTOR(int_wvalid);
    wready_i             <= STD_LOGIC_VECTOR(int_wready_i);
    bvalid_i             <= STD_LOGIC_VECTOR(int_bvalid_i);
    bready               <= STD_LOGIC_VECTOR(int_bready);
    araddr               <= STD_LOGIC_VECTOR(int_araddr);
    arvalid              <= STD_LOGIC_VECTOR(int_arvalid);
    arready_i            <= STD_LOGIC_VECTOR(int_arready_i);
    rvalid_i             <= STD_LOGIC_VECTOR(int_rvalid_i);
    rready               <= STD_LOGIC_VECTOR(int_rready);
    rst_n                <= STD_LOGIC_VECTOR(int_rst_n);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                awaddr_set(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AWADDR_DATA_0) then
                    awaddr_set(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and awaddr_set(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                awvalid_set(0 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AWVALID_DATA_0) then
                    awvalid_set(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and awvalid_set(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                awready_i_set(0 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AWREADY_I_DATA_0) then
                    awready_i_set(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and awready_i_set(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                awready_o_get <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (true) then
                    awready_o_get <= int_awready_o;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                awready_o_vld_get <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr = ADDR_AWREADY_O_CTRL) then
                    awready_o_vld_get <= '0'; -- clear on read
                elsif (int_awready_o_ap_vld = '1') then
                    awready_o_vld_get <= '1';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wdata_set(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WDATA_DATA_0) then
                    wdata_set(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and wdata_set(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wvalid_set(0 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WVALID_DATA_0) then
                    wvalid_set(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and wvalid_set(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wready_i_set(0 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WREADY_I_DATA_0) then
                    wready_i_set(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and wready_i_set(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wready_o_get <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (true) then
                    wready_o_get <= int_wready_o;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wready_o_vld_get <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr = ADDR_WREADY_O_CTRL) then
                    wready_o_vld_get <= '0'; -- clear on read
                elsif (int_wready_o_ap_vld = '1') then
                    wready_o_vld_get <= '1';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                bvalid_i_set(0 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BVALID_I_DATA_0) then
                    bvalid_i_set(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and bvalid_i_set(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                bvalid_o_get <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (true) then
                    bvalid_o_get <= int_bvalid_o;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                bvalid_o_vld_get <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr = ADDR_BVALID_O_CTRL) then
                    bvalid_o_vld_get <= '0'; -- clear on read
                elsif (int_bvalid_o_ap_vld = '1') then
                    bvalid_o_vld_get <= '1';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                bready_set(0 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BREADY_DATA_0) then
                    bready_set(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and bready_set(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                araddr_set(7 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ARADDR_DATA_0) then
                    araddr_set(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and araddr_set(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                arvalid_set(0 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ARVALID_DATA_0) then
                    arvalid_set(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and arvalid_set(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                arready_i_set(0 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ARREADY_I_DATA_0) then
                    arready_i_set(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and arready_i_set(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                arready_o_get <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (true) then
                    arready_o_get <= int_arready_o;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                arready_o_vld_get <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr = ADDR_ARREADY_O_CTRL) then
                    arready_o_vld_get <= '0'; -- clear on read
                elsif (int_arready_o_ap_vld = '1') then
                    arready_o_vld_get <= '1';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rdata_get <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (true) then
                    rdata_get <= int_rdata;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rdata_vld_get <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr = ADDR_RDATA_CTRL) then
                    rdata_vld_get <= '0'; -- clear on read
                elsif (int_rdata_ap_vld = '1') then
                    rdata_vld_get <= '1';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rvalid_i_set(0 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RVALID_I_DATA_0) then
                    rvalid_i_set(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and rvalid_i_set(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rvalid_o_get <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (true) then
                    rvalid_o_get <= int_rvalid_o;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rvalid_o_vld_get <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr = ADDR_RVALID_O_CTRL) then
                    rvalid_o_vld_get <= '0'; -- clear on read
                elsif (int_rvalid_o_ap_vld = '1') then
                    rvalid_o_vld_get <= '1';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rready_set(0 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RREADY_DATA_0) then
                    rready_set(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and rready_set(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rst_n_set(0 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RST_N_DATA_0) then
                    rst_n_set(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and rst_n_set(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_awaddr(7 downto 0) <= (others => '0');
             else
                 int_awaddr(7 downto 0) <= awaddr_set(7 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_awvalid(0 downto 0) <= (others => '0');
             else
                 int_awvalid(0 downto 0) <= awvalid_set(0 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_awready_i(0 downto 0) <= (others => '0');
             else
                 int_awready_i(0 downto 0) <= awready_i_set(0 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_awready_o <= (others => '0');
             elsif (awready_o_ap_vld = '1') then
                 int_awready_o <= UNSIGNED(awready_o);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 awready_o_vld_ext <= '0';
             else
                 awready_o_vld_ext <= awready_o_vld_get;
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_awready_o_ap_vld <= '0';
             elsif (awready_o_ap_vld = '1') then
                 int_awready_o_ap_vld <= '1';
             elsif (awready_o_vld_get = '0' and awready_o_vld_ext = '1') then
                 int_awready_o_ap_vld <= '0'; -- clear on read
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_wdata(31 downto 0) <= (others => '0');
             else
                 int_wdata(31 downto 0) <= wdata_set(31 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_wvalid(0 downto 0) <= (others => '0');
             else
                 int_wvalid(0 downto 0) <= wvalid_set(0 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_wready_i(0 downto 0) <= (others => '0');
             else
                 int_wready_i(0 downto 0) <= wready_i_set(0 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_wready_o <= (others => '0');
             elsif (wready_o_ap_vld = '1') then
                 int_wready_o <= UNSIGNED(wready_o);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 wready_o_vld_ext <= '0';
             else
                 wready_o_vld_ext <= wready_o_vld_get;
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_wready_o_ap_vld <= '0';
             elsif (wready_o_ap_vld = '1') then
                 int_wready_o_ap_vld <= '1';
             elsif (wready_o_vld_get = '0' and wready_o_vld_ext = '1') then
                 int_wready_o_ap_vld <= '0'; -- clear on read
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_bvalid_i(0 downto 0) <= (others => '0');
             else
                 int_bvalid_i(0 downto 0) <= bvalid_i_set(0 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_bvalid_o <= (others => '0');
             elsif (bvalid_o_ap_vld = '1') then
                 int_bvalid_o <= UNSIGNED(bvalid_o);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 bvalid_o_vld_ext <= '0';
             else
                 bvalid_o_vld_ext <= bvalid_o_vld_get;
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_bvalid_o_ap_vld <= '0';
             elsif (bvalid_o_ap_vld = '1') then
                 int_bvalid_o_ap_vld <= '1';
             elsif (bvalid_o_vld_get = '0' and bvalid_o_vld_ext = '1') then
                 int_bvalid_o_ap_vld <= '0'; -- clear on read
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_bready(0 downto 0) <= (others => '0');
             else
                 int_bready(0 downto 0) <= bready_set(0 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_araddr(7 downto 0) <= (others => '0');
             else
                 int_araddr(7 downto 0) <= araddr_set(7 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_arvalid(0 downto 0) <= (others => '0');
             else
                 int_arvalid(0 downto 0) <= arvalid_set(0 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_arready_i(0 downto 0) <= (others => '0');
             else
                 int_arready_i(0 downto 0) <= arready_i_set(0 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_arready_o <= (others => '0');
             elsif (arready_o_ap_vld = '1') then
                 int_arready_o <= UNSIGNED(arready_o);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 arready_o_vld_ext <= '0';
             else
                 arready_o_vld_ext <= arready_o_vld_get;
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_arready_o_ap_vld <= '0';
             elsif (arready_o_ap_vld = '1') then
                 int_arready_o_ap_vld <= '1';
             elsif (arready_o_vld_get = '0' and arready_o_vld_ext = '1') then
                 int_arready_o_ap_vld <= '0'; -- clear on read
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_rdata <= (others => '0');
             elsif (rdata_ap_vld = '1') then
                 int_rdata <= UNSIGNED(rdata);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 rdata_vld_ext <= '0';
             else
                 rdata_vld_ext <= rdata_vld_get;
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_rdata_ap_vld <= '0';
             elsif (rdata_ap_vld = '1') then
                 int_rdata_ap_vld <= '1';
             elsif (rdata_vld_get = '0' and rdata_vld_ext = '1') then
                 int_rdata_ap_vld <= '0'; -- clear on read
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_rvalid_i(0 downto 0) <= (others => '0');
             else
                 int_rvalid_i(0 downto 0) <= rvalid_i_set(0 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_rvalid_o <= (others => '0');
             elsif (rvalid_o_ap_vld = '1') then
                 int_rvalid_o <= UNSIGNED(rvalid_o);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 rvalid_o_vld_ext <= '0';
             else
                 rvalid_o_vld_ext <= rvalid_o_vld_get;
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_rvalid_o_ap_vld <= '0';
             elsif (rvalid_o_ap_vld = '1') then
                 int_rvalid_o_ap_vld <= '1';
             elsif (rvalid_o_vld_get = '0' and rvalid_o_vld_ext = '1') then
                 int_rvalid_o_ap_vld <= '0'; -- clear on read
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_rready(0 downto 0) <= (others => '0');
             else
                 int_rready(0 downto 0) <= rready_set(0 downto 0);
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (rst = '1') then
                 int_rst_n(0 downto 0) <= (others => '0');
             else
                 int_rst_n(0 downto 0) <= rst_n_set(0 downto 0);
            end if;
        end if;
    end process;

-- ----------------------- Memory logic ------------------

end architecture behave;
