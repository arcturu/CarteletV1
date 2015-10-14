library ieee;
use ieee.std_logic_1164.all;

package types is
    type cpu_in_type is record
        ex_data : std_logic_vector (31 downto 0);
        ex_fresh : std_logic;
        ex_valid : std_logic;
        sram_din : std_logic_vector (31 downto 0);
    end record;
    constant cpu_in_init : cpu_in_type := (
        ex_data => (others => '0'),
        ex_fresh => '0',
        ex_valid => '0',
        sram_din => (others => '0'));
    type cpu_out_type is record
        ex_data : std_logic_vector (31 downto 0);
        ex_go : std_logic;
        sram_dout : std_logic_vector (31 downto 0);
        sram_addr : std_logic_vector (19 downto 0);
        sram_we : std_logic;
    end record;
    constant cpu_out_init : cpu_out_type := (
        ex_data => (others => '0'),
        ex_go => '0',
        sram_dout => (others => '0'),
        sram_addr => (others => '0'),
        sram_we => '0');
    component cpu is
        port (
            clk     : in std_logic;
            rst     : in std_logic;
            cpu_in  : in cpu_in_type;
            cpu_out : out cpu_out_type);
    end component;

    type alu_in_type is record
        command : std_logic_vector (3 downto 0);
        lhs : std_logic_vector (31 downto 0);
        rhs : std_logic_vector (31 downto 0);
    end record;
    constant alu_in_init : alu_in_type := (
        command => (others => '0'),
        lhs => (others => '0'),
        rhs => (others => '0'));
    type alu_out_type is record
        data : std_logic_vector (31 downto 0);
    end record;
    constant alu_out_init : alu_out_type := (
        data => (others => '0'));
    component alu is
        port (
            clk : in std_logic;
            rst : in std_logic;
            alu_in : in alu_in_type;
            alu_out : out alu_out_type);
    end component;

    type fpu_in_type is record
        command : std_logic_vector (3 downto 0);
        lhs : std_logic_vector (31 downto 0);
        rhs : std_logic_vector (31 downto 0);
    end record;
    constant fpu_in_init : fpu_in_type := (
        command => (others => '0'),
        lhs => (others => '0'),
        rhs => (others => '0'));
    type fpu_out_type is record
        data : std_logic_vector (31 downto 0);
    end record;
    constant fpu_out_init : fpu_out_type := (
        data => (others => '0'));
    component fpu is
        port (
            clk : in std_logic;
            rst : in std_logic;
            fpu_in : in fpu_in_type;
            fpu_out : out fpu_out_type);
    end component;

    type sender_in_type is record
        data : std_logic_vector (31 downto 0);
        go   : std_logic;
    end record;
    constant sender_in_init : sender_in_type := (
        data => (others => '0'),
        go   => '0');
    type sender_out_type is record
        RS_TX : std_logic;
        busy  : std_logic;
    end record;
    constant sender_out_init : sender_out_type := (
        RS_TX => '0',
        busy  => '0');
    component sender is
        generic (
            wtime : std_logic_vector (15 downto 0) := x"1ADB"
        );
        port (
            clk        : in std_logic;
            rst        : in std_logic;
            sender_in  : in sender_in_type;
            sender_out : out sender_out_type);
    end component;

    type receiver_in_type is record
        RS_RX : std_logic;
    end record;
    constant receiver_in_init : receiver_in_type := (
        RS_RX => '0');
    type receiver_out_type is record
        data  : std_logic_vector (31 downto 0);
        valid : std_logic;
        fresh : std_logic;
    end record;
    constant receiver_out_init : receiver_out_type := (
        data  => (others => '0'),
        valid => '0',
        fresh => '0');
    component receiver is
        generic (
            wtime : std_logic_vector (15 downto 0) := x"1ADB"
        );
        port (
            clk          : in std_logic;
            rst          : in std_logic;
            receiver_in  : in receiver_in_type;
            receiver_out : out receiver_out_type);
    end component;

    type sram_cache_slot_type is record
        valid : std_logic;
        tag : std_logic_vector (19 downto 0);
        value : std_logic_vector (31 downto 0);
    end record;
    type sram_cache_type is array (15 downto 0) of sram_cache_slot_type;
    constant sram_cache_init : sram_cache_type := (others => (
        valid => '0',
        tag => (others => '0'),
        value => (others => '0')));

    constant PMEM_ADDR_WIDTH: integer := 14;

    constant CMD_PLOAD : std_logic_vector (7 downto 0) := x"01";
    constant CMD_DLOAD : std_logic_vector (7 downto 0) := x"02";
    constant CMD_EXEC  : std_logic_vector (7 downto 0) := x"03";

    constant OP_NOP  : std_logic_vector (5 downto 0) := "000000";
    constant OP_ADD  : std_logic_vector (5 downto 0) := "000001";
    constant OP_ADDI : std_logic_vector (5 downto 0) := "000010";
    constant OP_SUB  : std_logic_vector (5 downto 0) := "000011";
    constant OP_SUBI : std_logic_vector (5 downto 0) := "000100";
    constant OP_SLL  : std_logic_vector (5 downto 0) := "000101";
    constant OP_SRL  : std_logic_vector (5 downto 0) := "000110";
    constant OP_ST   : std_logic_vector (5 downto 0) := "001000";
    constant OP_LD   : std_logic_vector (5 downto 0) := "001001";
    constant OP_BEQ  : std_logic_vector (5 downto 0) := "010000";
    constant OP_BNEQ : std_logic_vector (5 downto 0) := "010001";
    constant OP_JR   : std_logic_vector (5 downto 0) := "010010";
    constant OP_JAL  : std_logic_vector (5 downto 0) := "010011";
    constant OP_SEND : std_logic_vector (5 downto 0) := "100000";
    constant OP_HALT : std_logic_vector (5 downto 0) := "100001";
    constant OP_FADD : std_logic_vector (5 downto 0) := "110000";
    constant OP_FMUL : std_logic_vector (5 downto 0) := "110001";
    constant OP_FINV : std_logic_vector (5 downto 0) := "110010";
    constant OP_FNEG : std_logic_vector (5 downto 0) := "110011";
    constant OP_FABS : std_logic_vector (5 downto 0) := "110100";
    constant OP_FST  : std_logic_vector (5 downto 0) := "110101";
    constant OP_FLD  : std_logic_vector (5 downto 0) := "110110";

    constant ALU_NOP : std_logic_vector (3 downto 0) := "0000";
    constant ALU_ADD : std_logic_vector (3 downto 0) := "0001";
    constant ALU_SUB : std_logic_vector (3 downto 0) := "0010";
    constant ALU_SLL : std_logic_vector (3 downto 0) := "0011";
    constant ALU_SRL : std_logic_vector (3 downto 0) := "0100";

    constant FPU_NOP : std_logic_vector (3 downto 0) := "0000";
    constant FPU_ADD : std_logic_vector (3 downto 0) := "0001";
    constant FPU_MUL : std_logic_vector (3 downto 0) := "0010";
    constant FPU_INV : std_logic_vector (3 downto 0) := "0011";
    constant FPU_NEG : std_logic_vector (3 downto 0) := "0100";
    constant FPU_ABS : std_logic_vector (3 downto 0) := "0101";
end package;
