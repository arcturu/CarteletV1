library ieee;
library unisim;
use unisim.vcomponents.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.types.all;

entity TOP is
    generic (
        wtime : std_logic_vector (15 downto 0) := x"24ED" -- 90MHz 9600
--        wtime : std_logic_vector (15 downto 0) := x"2847" -- 99MHz 9600
--        wtime : std_logic_vector (15 downto 0) := x"1ADB" -- 66MHz 9600
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
    component SRAM_CLK is
        port (
            CLKIN_IN : in std_logic;
            RST_IN : in std_logic;
            CLK0_OUT : out std_logic;
            LOCKED_OUT : out std_logic
        );
    end component;

    signal clk : std_logic;
    signal iclk : std_logic;
    signal sclk : std_logic;
    signal rst : std_logic := '0';

    signal sender_in    : sender_in_type    := sender_in_init;
    signal sender_out   : sender_out_type   := sender_out_init;
    signal receiver_in  : receiver_in_type  := receiver_in_init;
    signal receiver_out : receiver_out_type := receiver_out_init;
    signal cpu_in       : cpu_in_type       := cpu_in_init;
    signal cpu_out      : cpu_out_type      := cpu_out_init;

    type sram_addrs_type is array (2 downto 0) of std_logic_vector (19 downto 0);
    signal sram_addrs : sram_addrs_type;
    type sram_zds_type is array (2 downto 0) of std_logic_vector (31 downto 0);
    signal sram_zds : sram_zds_type;
    type sram_was_type is array (2 downto 0) of std_logic;
    signal sram_was : sram_was_type;
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
    sram_clock : SRAM_CLK port map (
        CLKIN_IN => clk,
        RST_IN => rst,
        CLK0_OUT => sclk
    );
    sender_1 : sender generic map (wtime) port map (clk, rst, sender_in, sender_out);
    receiver_1 : receiver generic map (wtime) port map (clk, rst, receiver_in, receiver_out);
    cpu_1 : cpu port map (clk, rst, cpu_in, cpu_out);

    receiver_in.RS_RX <= RS_RX;
    RS_TX <= sender_out.RS_TX;
    cpu_in.ex_data <= receiver_out.data;
    cpu_in.ex_valid <= receiver_out.valid;
    cpu_in.ex_fresh <= receiver_out.fresh;
    sender_in.data <= cpu_out.ex_data;
    sender_in.go <= cpu_out.ex_go;


    -- sram controller (わける？)
    sram_was (0) <= cpu_out.sram_we;
    XWA <= not sram_was (0);
    sram_addrs (0) <= cpu_out.sram_addr;
    ZA <= sram_addrs (0);
    sram_zds (0) <= cpu_out.sram_dout;
    ZD <= sram_zds (2) when sram_was (2) = '1' else (others => 'Z');
    sram_manager_sub1 : process (clk)
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

    sram_manager_sub2 : process (sclk) -- read 用
    begin
        if rising_edge(sclk) then
            if sram_was (2) = '0' then
                cpu_in.sram_din <= ZD;
            end if;
        end if;
    end process;


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
    ZCLKMA (0) <= sclk;
    ZCLKMA (1) <= sclk;
end struct;

