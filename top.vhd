library ieee;
library unisim;
use unisim.vcomponents.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.types.all;

entity TOP is
    generic (
--        wtime : std_logic_vector (15 downto 0) := x"24ED" -- 90MHz 9600
--        wtime : std_logic_vector (15 downto 0) := x"2847" -- 99MHz 9600
--        wtime : std_logic_vector (15 downto 0) := x"1ADB" -- 66MHz 9600
--        wtime : std_logic_vector (15 downto 0) := x"0242" -- 66MHz 115200
        wtime : std_logic_vector (15 downto 0) := x"0302" -- 88MHz 115200
--        wtime : std_logic_vector (15 downto 0) := x"2CC2" -- 110MHz (5/3) 9600
--        wtime : std_logic_vector (15 downto 0) := x"313C" -- 121MHz 9600
--        wtime : std_logic_vector (15 downto 0) := x"0D6D" -- 133MHz 38400
    );
    port (
        MCLK1  : in    std_logic;
        RS_RX  : in    std_logic;
        RS_TX  : out   std_logic;
        ZD     : inout std_logic_vector (31 downto 0);
        ZA     : out   std_logic_vector (19 downto 0);
        XWA    : out   std_logic;
        XE1    : out   std_logic;
        E2A    : out   std_logic;
        XE3    : out   std_logic;
        XGA    : out   std_logic;
        XZCKE  : out   std_logic;
        ADVA   : out   std_logic;
        XLBO   : out   std_logic;
        ZZA    : out   std_logic;
        XFT    : out   std_logic;
        XZBE   : out   std_logic_vector (3 downto 0);
        ZCLKMA : out   std_logic_vector (1 downto 0));
end TOP;

architecture struct of TOP is
    component CPU_CLK is
        port (
            CLKIN_IN : in std_logic;
            RST_IN : in std_logic;
            CLKFX_OUT : out std_logic;
            CLKIN_IBUFG_OUT : out std_logic;
            CLK0_OUT : out std_logic;
            LOCKED_OUT : out std_logic
        );
    end component;
--    component SRAM_CLK is
--        port (
--            CLKIN_IN : in std_logic;
--            RST_IN : in std_logic;
--            CLK0_OUT : out std_logic;
--            LOCKED_OUT : out std_logic
--        );
--    end component;

    signal clk : std_logic;
    signal iclk : std_logic;
--    signal sclk : std_logic;
    signal rst : std_logic := '0';

    signal sender_in    : sender8_in_type    := sender8_in_init;
    signal sender_out   : sender8_out_type   := sender8_out_init;
    signal receiver_in  : receiver_in_type  := receiver_in_init;
    signal receiver_out : receiver_out_type := receiver_out_init;
    signal receiver_q8_rst : std_logic := '0';
    signal receiver_q8_in  : receiver_q8_in_type  := receiver_q8_in_init;
    signal receiver_q8_out : receiver_q8_out_type := receiver_q8_out_init;
    signal cpu_in       : cpu_in_type       := cpu_in_init;
    signal cpu_out      : cpu_out_type      := cpu_out_init;

    type sram_addrs_type is array (2 downto 0) of std_logic_vector (19 downto 0);
    signal sram_addrs : sram_addrs_type := (others => (others => '0'));
    type sram_zds_type is array (2 downto 0) of std_logic_vector (31 downto 0);
    signal sram_zds : sram_zds_type := (others => (others => '0'));
    type sram_was_type is array (2 downto 0) of std_logic;
    signal sram_was : sram_was_type := (others => '0');

--    signal sram_cache : sram_cache_type := sram_cache_init;
begin
--    ib : IBUFG port map (
--        i => MCLK1,
--        o => iclk);
--    bg : BUFG port map (
--        i => iclk, --        o => clk);
    cpu_clock : CPU_CLK port map (
        CLKIN_IN => MCLK1,
        RST_IN => rst,
        CLKFX_OUT => clk
    );
--    sram_clock : SRAM_CLK port map (
--        CLKIN_IN => clk,
--        RST_IN => rst,
--        CLK0_OUT => sclk
--    );
    sender_1 : sender8 generic map (wtime) port map (clk, rst, sender_in, sender_out);
    receiver_1 : receiver generic map (wtime) port map (clk, rst, receiver_in, receiver_out);
    receiver_q8_1 : receiver_q8 generic map (wtime) port map (clk, receiver_q8_rst, receiver_q8_in, receiver_q8_out);
    cpu_1 : cpu port map (clk, rst, cpu_in, cpu_out);

    receiver_in.RS_RX <= RS_RX when cpu_out.state /= running else '1';
    receiver_q8_in.RS_RX <= RS_RX when cpu_out.state = running else '1';
    receiver_q8_rst <= cpu_out.ex_rst8;
    receiver_q8_in.pop <= cpu_out.ex_pop8;
    RS_TX <= sender_out.RS_TX;
    cpu_in.ex_valid <= receiver_q8_out.valid when cpu_out.state = running else receiver_out.valid;
    cpu_in.ex_data <= x"000000" & receiver_q8_out.data when cpu_out.state = running else receiver_out.data;
    cpu_in.ex_fresh <= receiver_out.fresh;
    cpu_in.ex_sender_busy <= sender_out.busy;
    sender_in.data <= cpu_out.ex_data (31 downto 24);
    sender_in.go <= cpu_out.ex_go;


    -- sram controller (わける？)
    sram_was (0) <= cpu_out.sram_we;
    XWA <= not sram_was (0);
    sram_addrs (0) <= cpu_out.sram_addr;
    ZA <= sram_addrs (0);
    sram_zds (0) <= cpu_out.sram_dout;
    ZD <= sram_zds (2) when sram_was (2) = '1' else (others => 'Z');
    cpu_in.sram_din <= ZD;
    sram_manager_sub1 : process (clk, sram_was, sram_addrs, sram_zds)
    begin
        if rising_edge(clk) then
            sram_was (1) <= sram_was (0);
            sram_was (2) <= sram_was (1);

            sram_addrs (1) <= sram_addrs (0);
            sram_addrs (2) <= sram_addrs (1);

            sram_zds (1) <= sram_zds (0);
            sram_zds (2) <= sram_zds (1);
        end if;
    end process;

--    sram_manager_sub2 : process (sclk) -- read 用
--    begin
--        if rising_edge(sclk) then
--            if sram_addrs(2)(0) = '1' or sram_addrs(2)(0) = '0' then
--                if sram_was(2) = '0' then
--                    sram_cache(to_integer(unsigned(sram_addrs(2) (3 downto 0)))).valid <= '1';
--                    sram_cache(to_integer(unsigned(sram_addrs(2) (3 downto 0)))).tag <= sram_addrs(2);
--                    sram_cache(to_integer(unsigned(sram_addrs(2) (3 downto 0)))).value <= ZD;
--                end if;
--            end if;
--        end if;
--    end process;


    XE1 <= '0';
    E2A <= '1';
    XE3 <= '0';
    XGA <= '0';
    XZCKE <= '0';
    ADVA <= '0';
    XLBO <= '1';
    ZZA <= '0';
    XFT <= '1';
    XZBE <= "0000";
    ZCLKMA (0) <= clk;
    ZCLKMA (1) <= clk;
end struct;

