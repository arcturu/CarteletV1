library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.types.all;

entity CPU is
    port (
        clk : in std_logic;
        rst : in std_logic;
        cpu_in : in cpu_in_type;
        cpu_out : out cpu_out_type);
end entity;

architecture struct of CPU is
--    component dmem_sim is -- for simulation
    component mem is
        port (
            addra : IN STD_LOGIC_VECTOR((PMEM_ADDR_WIDTH - 1) DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            clka : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
    end component;


    type sram_state_type is (idle, write, read);
    type data_source_type is (src_alu, src_fpu, src_sram, src_fsram, src_direct, src_fdirect);
    type registers_type is array (31 downto 0) of std_logic_vector (31 downto 0);
    type fetch_readreg_reg_type is record
        pc : std_logic_vector ((PMEM_ADDR_WIDTH - 1) downto 0);
        fetched : std_logic;
        data : std_logic_vector (31 downto 0);
    end record;
    type readreg_ex_reg_type is record
        pc : std_logic_vector ((PMEM_ADDR_WIDTH - 1) downto 0);
        data : std_logic_vector (31 downto 0);
        ex_op : std_logic_vector (5 downto 0);
        dest_num : std_logic_vector (4 downto 0);
        dest_value : std_logic_vector (31 downto 0);
        lhs_num : std_logic_vector (4 downto 0);
        lhs_value : std_logic_vector (31 downto 0);
        rhs_num : std_logic_vector (4 downto 0);
        rhs_value : std_logic_vector (31 downto 0);
        imm : std_logic_vector (15 downto 0);
    end record;
    type ex_wb_reg_type is record
        pc : std_logic_vector ((PMEM_ADDR_WIDTH - 1) downto 0);
        dest_num : std_logic_vector (4 downto 0);
        data_source : data_source_type;
        sram_state : sram_state_type;
        sram_addr : std_logic_vector (19 downto 0);
        sram_data_to_be_written : std_logic_vector (31 downto 0);
        write : std_logic;
        data : std_logic_vector (31 downto 0);
        next_pc : std_logic_vector ((PMEM_ADDR_WIDTH - 1) downto 0);
    end record;
    type wb_mem_reg_type is record
        sram_state : sram_state_type;
        sram_data_to_be_written : std_logic_vector (31 downto 0);
        dest_num : std_logic_vector (4 downto 0);
    end record;
    type forwarder_type is record
        reg_num : std_logic_vector (4 downto 0);
        value : std_logic_vector (31 downto 0);
        valid : std_logic;
        floating : std_logic;
    end record;
    type forwarder_file_type is array (0 downto 0) of forwarder_type;
    type sram_cache_slot_type is record
        data : std_logic_vector (31 downto 0);
        valid : std_logic;
        tag : std_logic_vector (19 downto 0);
    end record;
    type sram_cache_type is array (15 downto 0) of sram_cache_slot_type;
    type reg_type is record
        sram_cache : sram_cache_type;
        sram_in_buf : std_logic_vector (31 downto 0);
        pc : std_logic_vector ((PMEM_ADDR_WIDTH - 1) downto 0);
        bubble_counter : std_logic_vector (3 downto 0);
        repeat : std_logic;
        load_size : std_logic_vector ((PMEM_ADDR_WIDTH - 1) downto 0);
        load_counter : std_logic_vector ((PMEM_ADDR_WIDTH - 1) downto 0);
        forwarder_file : forwarder_file_type;
        fetch_counter : std_logic_vector (3 downto 0);
--        fetch_readreg_reg : fetch_readreg_reg_type;
        fetch_readreg_reg2 : fetch_readreg_reg_type;
        readreg_ex_reg : readreg_ex_reg_type;
        ex_wb_reg : ex_wb_reg_type;
        wb_mem_reg : wb_mem_reg_type;
        regs : registers_type;
        fregs : registers_type;
        fpcond : std_logic;
        cpu_state : cpu_state_type;
    end record;
    constant reg_init : reg_type := (
        sram_cache => (others => (
            data => (others => '0'),
            valid => '0',
            tag => (others => '0'))),
        sram_in_buf => (others => '0'),
        pc => (others => '0'),
        bubble_counter => (others => '0'),
        repeat => '0',
        load_size => (others => '0'),
        load_counter => (others => '0'),
        forwarder_file => (others => (
            reg_num => (others => '0'),
            value => (others => '0'),
            valid => '0',
            floating => '0')),
        fetch_counter => (others => '0'),
--        fetch_readreg_reg => (
--            pc => (others => '0')),
        fetch_readreg_reg2 => (
            pc => (others => '0'),
            fetched => '0',
            data => (others => '0')),
        readreg_ex_reg => (
            pc => (others => '0'),
            data => (others => '0'),
            ex_op => (others => '0'),
            dest_num => (others => '0'),
            dest_value => (others => '0'),
            lhs_num => (others => '0'),
            lhs_value => (others => '0'),
            rhs_num => (others => '0'),
            rhs_value => (others => '0'),
            imm => (others => '0')),
        ex_wb_reg => (
            pc => (others => '0'),
            dest_num => (others => '0'),
            data_source => src_direct,
            sram_state => idle,
            sram_addr => (others => '0'),
            sram_data_to_be_written => (others => '0'),
            write => '0',
            data => (others => '0'),
            next_pc => (others => '0')),
        wb_mem_reg => (
            sram_state => idle,
            sram_data_to_be_written => (others => '0'),
            dest_num => (others => '0')),
        regs => (others => (others => '0')),
        fregs => (others => (others => '0')),
        fpcond => '0',
        cpu_state => ready);

    signal r, rin : reg_type := reg_init;
    signal pmem_we : std_logic_vector (0 downto 0) := (others => '0');
    signal pmem_addr : std_logic_vector ((PMEM_ADDR_WIDTH - 1) downto 0) := (others => '0');
    signal pmem_din : std_logic_vector (31 downto 0) := (others => '0');
    signal pmem_dout : std_logic_vector (31 downto 0) := (others => '0');
    signal alu_in : alu_in_type := alu_in_init;
    signal alu_out : alu_out_type := alu_out_init;

    signal fpu_in : fpu_in_type := fpu_in_init;
    signal fpu_out : fpu_out_type := fpu_out_init;

    function stdv2str(vec:std_logic_vector) return string is
        variable str: string(vec'left+1 downto 1);
    begin
        for i in vec'reverse_range loop
            if(vec(i)='U') then
                str(i+1):='U';
            elsif(vec(i)='X') then
                str(i+1):='X';
            elsif(vec(i)='0') then
                str(i+1):='0';
            elsif(vec(i)='1') then
                str(i+1):='1';
            elsif(vec(i)='Z') then
                str(i+1):='Z';
            elsif(vec(i)='W') then
                str(i+1):='W';
            elsif(vec(i)='L') then
                str(i+1):='L';
            elsif(vec(i)='H') then
                str(i+1):='H';
            else
                str(i+1):='-';
            end if;
        end loop;
        return str;
    end;
begin
--    pmem : dmem_sim port map (
    pmem : mem port map (
        clka => clk,
        wea => pmem_we,
        addra => pmem_addr,
        dina => pmem_din,
        douta => pmem_dout);

    alu_0 : alu port map (
        clk => clk,
        rst => '0',
        alu_in => alu_in,
        alu_out => alu_out);

    fpu_0 : fpu port map (
        clk => clk,
        rst => '0',
        fpu_in => fpu_in,
        fpu_out => fpu_out);

    comb : process (cpu_in, r, pmem_dout, alu_out)
        variable v : reg_type;
        variable ex_lhs_value : std_logic_vector (31 downto 0) := (others => '0');
        variable ex_rhs_value : std_logic_vector (31 downto 0) := (others => '0');
        variable ex_dest_value : std_logic_vector (31 downto 0) := (others => '0');
        variable read_lhs_value : std_logic_vector (31 downto 0) := (others => '0');
        variable read_rhs_value : std_logic_vector (31 downto 0) := (others => '0');
        variable read_dest_value : std_logic_vector (31 downto 0) := (others => '0');
        variable ex_tmp_pc : std_logic_vector (15 downto 0) := (others => '0');
        variable cpu_ex_go : std_logic := '0';
        variable cpu_ex_go8 : std_logic := '0';
        variable cpu_ex_pop8 : std_logic := '0';
        variable cpu_ex_rst8 : std_logic := '0';
        variable cpu_ex_sram_we : std_logic := '0';
        variable cpu_ex_sram_dout : std_logic_vector (31 downto 0) := (others => 'Z');
        variable cpu_ex_sram_addr : std_logic_vector (19 downto 0) := (others => 'Z');
        variable tmp_data : std_logic_vector (31 downto 0);
        variable flush_read : std_logic := '0';
        variable no_fetch : std_logic := '0';
        variable inst : std_logic_vector (31 downto 0) := (others => '0');
        variable is_floating_inst : std_logic := '0';
        variable tmp_sram_addr : std_logic_vector (31 downto 0) := (others => '0');
    begin
        v := r;
        cpu_ex_rst8 := '0';
        cpu_ex_go := '0';
        cpu_ex_go8 := '0';
        no_fetch := '0';
        case r.cpu_state is
            when ready =>
                cpu_ex_rst8 := '1';
                cpu_out.ex_go <= '0';
                pmem_addr <= (others => '0');
                if cpu_in.ex_fresh = '1' then
                    case cpu_in.ex_data (31 downto 24) is
                        when CMD_PLOAD =>
                            v.cpu_state := ploading;
                            v.load_size := cpu_in.ex_data ((PMEM_ADDR_WIDTH - 1) downto 0);
                            v.load_counter := (others => '0');
                        when CMD_DLOAD =>
                            v.cpu_state := dloading;
                            v.load_size := cpu_in.ex_data ((PMEM_ADDR_WIDTH - 1) downto 0);
                            v.load_counter := (others => '0');
                        when CMD_EXEC =>
                            v.cpu_state := running;

                            v.pc := reg_init.pc;
                            v.forwarder_file := reg_init.forwarder_file;
--                            v.fetch_readreg_reg := reg_init.fetch_readreg_reg;
                            v.fetch_readreg_reg2 := reg_init.fetch_readreg_reg2;
                            v.readreg_ex_reg := reg_init.readreg_ex_reg;
                            v.ex_wb_reg := reg_init.ex_wb_reg;
                            v.wb_mem_reg := reg_init.wb_mem_reg;
                            v.regs := reg_init.regs;
                        when others =>
                    end case;
                end if;
                pmem_we <= (others => '0');
            when ploading =>
                cpu_out.ex_go <= '0';
                if r.load_counter < r.load_size then
                    if cpu_in.ex_fresh = '1' then
                        pmem_addr <= r.load_counter;
                        pmem_din <= cpu_in.ex_data;
                        pmem_we <= (others => '1');
                        v.load_counter := std_logic_vector(unsigned(r.load_counter) + 1);
                    else
                        pmem_we <= (others => '0');
                    end if;
                else
                    v.cpu_state := ready;
                    pmem_we <= (others => '0');
                end if;
            when dloading =>
                cpu_out.ex_go <= '0';
                pmem_we <= (others => '0');
            when running =>
                cpu_ex_pop8 := '0';
                cpu_ex_sram_we := '0';
                cpu_ex_sram_dout := (others => 'Z');
                pmem_we <= (others => '0');

--                -- memory read
--                case r.wb_mem_reg.sram_state is
--                    when write =>
--                        cpu_ex_sram_dout := r.wb_mem_reg.sram_data_to_be_written;
--                        v.forwarder_file(1).valid := '1';
--                    when read =>
--                        v.regs (to_integer(unsigned(r.wb_mem_reg.dest_num))) := cpu_in.sram_din;
--                        v.forwarder_file(1).valid := '1';
--                        v.forwarder_file(1).reg_num := r.wb_mem_reg.dest_num;
--                        v.forwarder_file(1).value := cpu_in.sram_din;
--                    when others =>
--                        v.forwarder_file(1).valid := '0';
--                end case;

                -- write back
                if r.bubble_counter = x"0" then
                    if r.ex_wb_reg.write = '1' then
                        case v.ex_wb_reg.data_source is
                            when src_alu =>
                                tmp_data := alu_out.data;
                                v.regs (to_integer(unsigned(r.ex_wb_reg.dest_num))) := tmp_data;
                                v.forwarder_file(0).floating := '0';
                            when src_fpu =>
                                tmp_data := fpu_out.data;
                                v.fregs (to_integer(unsigned(r.ex_wb_reg.dest_num))) := tmp_data;
                                v.forwarder_file(0).floating := '1';
                            when src_sram =>
                                tmp_data := r.sram_in_buf;
                                v.regs (to_integer(unsigned(r.ex_wb_reg.dest_num))) := tmp_data;
                                v.forwarder_file(0).floating := '0';
                                v.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).valid := '1';
                                v.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).data := tmp_data;
                                v.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).tag := r.ex_wb_reg.sram_addr;
                            when src_fsram =>
                                tmp_data := r.sram_in_buf;
                                v.fregs (to_integer(unsigned(r.ex_wb_reg.dest_num))) := tmp_data;
                                v.forwarder_file(0).floating := '1';
                                v.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).valid := '1';
                                v.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).data := tmp_data;
                                v.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).tag := r.ex_wb_reg.sram_addr;
                            when src_direct =>
                                tmp_data := r.ex_wb_reg.data;
                                v.regs (to_integer(unsigned(r.ex_wb_reg.dest_num))) := tmp_data;
                                v.forwarder_file(0).floating := '0';
                            when src_fdirect =>
                                tmp_data := r.ex_wb_reg.data;
                                v.fregs (to_integer(unsigned(r.ex_wb_reg.dest_num))) := tmp_data;
                                v.forwarder_file(0).floating := '1';
                        end case;
                        v.forwarder_file(0).reg_num := r.ex_wb_reg.dest_num;
                        v.forwarder_file(0).valid := '1';
                        v.forwarder_file(0).value := tmp_data;
                    else
                        v.forwarder_file(0).valid := '0';
                    end if;
--                    v.wb_mem_reg.sram_state := r.ex_wb_reg.sram_state;
--                    v.wb_mem_reg.sram_data_to_be_written := r.ex_wb_reg.sram_data_to_be_written;
--                    v.wb_mem_reg.dest_num := r.ex_wb_reg.dest_num;
                end if;

                -- execute
                ex_lhs_value := r.readreg_ex_reg.lhs_value;
                ex_rhs_value := r.readreg_ex_reg.rhs_value;
                ex_dest_value := r.readreg_ex_reg.dest_value;
                if v.forwarder_file(0).valid = '1' then
                    if r.readreg_ex_reg.lhs_num = v.forwarder_file(0).reg_num then
                        ex_lhs_value := v.forwarder_file(0).value;
                    end if;
                    if r.readreg_ex_reg.rhs_num = v.forwarder_file(0).reg_num then
                        ex_rhs_value := v.forwarder_file(0).value;
                    end if;
                    if r.readreg_ex_reg.dest_num = v.forwarder_file(0).reg_num then
                        ex_dest_value := v.forwarder_file(0).value;
                    end if;
                end if;
--                if v.forwarder_file(1).valid = '1' then
--                    if r.readreg_ex_reg.lhs_num = v.forwarder_file(1).reg_num then
--                        ex_lhs_value := v.forwarder_file(1).value;
--                    end if;
--                    if r.readreg_ex_reg.rhs_num = v.forwarder_file(1).reg_num then
--                        ex_rhs_value := v.forwarder_file(1).value;
--                    end if;
--                    if r.readreg_ex_reg.dest_num = v.forwarder_file(1).reg_num then
--                        ex_dest_value := v.forwarder_file(1).value;
--                    end if;
--                end if;

                flush_read := '0';
                if r.bubble_counter = x"0" then
                    v.ex_wb_reg.pc := r.readreg_ex_reg.pc;
                    v.ex_wb_reg.write := '0';
                    v.ex_wb_reg.sram_state := idle;
                end if;
                case r.readreg_ex_reg.ex_op is
                    when OP_ADD =>
                        v.ex_wb_reg.dest_num := r.readreg_ex_reg.dest_num;
                        v.ex_wb_reg.write := '1';
                        v.ex_wb_reg.data_source := src_alu;
                        alu_in.command <= ALU_ADD;
                        alu_in.lhs <= ex_lhs_value;
                        alu_in.rhs <= ex_rhs_value;
                    when OP_ADDI =>
                        v.ex_wb_reg.dest_num := r.readreg_ex_reg.dest_num;
                        v.ex_wb_reg.write := '1';
                        v.ex_wb_reg.data_source := src_alu;
                        alu_in.command <= ALU_ADD;
                        alu_in.lhs <= ex_lhs_value;
                        if r.readreg_ex_reg.imm (15) = '1' then
                            alu_in.rhs <= x"ffff" & r.readreg_ex_reg.imm;
                        else
                            alu_in.rhs <= x"0000" & r.readreg_ex_reg.imm;
                        end if;
                    when OP_SUB =>
                        v.ex_wb_reg.dest_num := r.readreg_ex_reg.dest_num;
                        v.ex_wb_reg.write := '1';
                        v.ex_wb_reg.data_source := src_alu;
                        alu_in.command <= ALU_SUB;
                        alu_in.lhs <= ex_lhs_value;
                        alu_in.rhs <= ex_rhs_value;
                    when OP_SUBI => -- deprecated
                        v.ex_wb_reg.dest_num := r.readreg_ex_reg.dest_num;
                        v.ex_wb_reg.write := '1';
                        v.ex_wb_reg.data_source := src_alu;
                        alu_in.command <= ALU_SUB;
                        alu_in.lhs <= ex_lhs_value;
                        if r.readreg_ex_reg.imm (15) = '1' then
                            alu_in.rhs <= x"ffff" & r.readreg_ex_reg.imm;
                        else
                            alu_in.rhs <= x"0000" & r.readreg_ex_reg.imm;
                        end if;
                    when OP_SLL =>
                        v.ex_wb_reg.dest_num := r.readreg_ex_reg.dest_num;
                        v.ex_wb_reg.write := '1';
                        v.ex_wb_reg.data_source := src_alu;
                        alu_in.command <= ALU_SLL;
                        alu_in.lhs <= ex_lhs_value;
                        alu_in.rhs <= ex_rhs_value;
                    when OP_SRL =>
                        v.ex_wb_reg.dest_num := r.readreg_ex_reg.dest_num;
                        v.ex_wb_reg.write := '1';
                        v.ex_wb_reg.data_source := src_alu;
                        alu_in.command <= ALU_SRL;
                        alu_in.lhs <= ex_lhs_value;
                        alu_in.rhs <= ex_rhs_value;
                    when OP_ST =>
                        v.ex_wb_reg.sram_state := write;
                        tmp_sram_addr := std_logic_vector(signed(ex_dest_value) + signed(r.readreg_ex_reg.imm));
                        cpu_ex_sram_addr := tmp_sram_addr (19 downto 0);
                        cpu_ex_sram_we := '1';
                        cpu_ex_sram_dout := ex_lhs_value;

                        v.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).valid := '1';
                        v.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).data := ex_lhs_value;
                        v.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).tag := tmp_sram_addr (19 downto 0);

                        v.fetch_readreg_reg2.fetched := '1';
                        v.fetch_readreg_reg2.data := pmem_dout;
                        v.bubble_counter := x"3";
                    when OP_FST =>
                        v.ex_wb_reg.sram_state := write;
                        tmp_sram_addr := std_logic_vector(signed(ex_dest_value) + signed(r.readreg_ex_reg.imm));
                        cpu_ex_sram_addr := tmp_sram_addr (19 downto 0);
                        cpu_ex_sram_we := '1';
                        cpu_ex_sram_dout := ex_lhs_value;

                        v.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).valid := '1';
                        v.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).data := ex_lhs_value;
                        v.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).tag := tmp_sram_addr (19 downto 0);

                        v.fetch_readreg_reg2.fetched := '1';
                        v.fetch_readreg_reg2.data := pmem_dout;
                        v.bubble_counter := x"3";
                    when OP_LD =>
                        v.ex_wb_reg.sram_state := read;
                        v.ex_wb_reg.dest_num := r.readreg_ex_reg.lhs_num;
                        v.ex_wb_reg.write := '1';
                        tmp_sram_addr := std_logic_vector(signed(ex_dest_value) + signed(r.readreg_ex_reg.imm));
                        cpu_ex_sram_addr := tmp_sram_addr (19 downto 0);
                        cpu_ex_sram_we := '0';
                        v.ex_wb_reg.sram_addr := tmp_sram_addr (19 downto 0);

                        if r.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).valid = '1' and
                            r.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).tag = tmp_sram_addr (19 downto 0) then
                            v.ex_wb_reg.data_source := src_direct;
                            v.ex_wb_reg.data := r.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).data;
                        else
                            v.ex_wb_reg.data_source := src_sram;

                            v.fetch_readreg_reg2.fetched := '1';
                            v.fetch_readreg_reg2.data := pmem_dout;
                            v.bubble_counter := x"3";
                        end if;
                    when OP_FLD =>
                        v.ex_wb_reg.sram_state := read;
                        v.ex_wb_reg.dest_num := r.readreg_ex_reg.lhs_num;
                        v.ex_wb_reg.write := '1';
                        tmp_sram_addr := std_logic_vector(signed(ex_dest_value) + signed(r.readreg_ex_reg.imm));
                        cpu_ex_sram_addr := tmp_sram_addr (19 downto 0);
                        cpu_ex_sram_we := '0';
                        v.ex_wb_reg.sram_addr := tmp_sram_addr (19 downto 0);

                        if r.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).valid = '1' and
                            r.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).tag = tmp_sram_addr (19 downto 0) then
                            v.ex_wb_reg.data_source := src_fdirect;
                            v.ex_wb_reg.data := r.sram_cache(to_integer(unsigned(tmp_sram_addr (3 downto 0)))).data;
                        else
                            v.ex_wb_reg.data_source := src_fsram;

                            v.fetch_readreg_reg2.fetched := '1';
                            v.fetch_readreg_reg2.data := pmem_dout;
                            v.bubble_counter := x"3";
                        end if;
                    when OP_BEQ =>
                        if ex_dest_value = ex_lhs_value then
                            ex_tmp_pc := "00" & r.readreg_ex_reg.pc;
                            ex_tmp_pc := std_logic_vector(signed(ex_tmp_pc) + signed(r.readreg_ex_reg.imm) + 1);

                            v.pc := ex_tmp_pc ((PMEM_ADDR_WIDTH - 1) downto 0);

                            v.fetch_readreg_reg2.pc := v.pc;
                            v.fetch_readreg_reg2.fetched := '0';
                            v.fetch_readreg_reg2.data := (others => '0');
                            flush_read := '1';
                        end if;
                    when OP_BNEQ =>
                        if ex_dest_value /= ex_lhs_value then
                            ex_tmp_pc := "00" & r.readreg_ex_reg.pc;
                            ex_tmp_pc := std_logic_vector(signed(ex_tmp_pc) + signed(r.readreg_ex_reg.imm) + 1);

                            v.pc := std_logic_vector(ex_tmp_pc ((PMEM_ADDR_WIDTH - 1) downto 0));

                            v.fetch_readreg_reg2.pc := v.pc;
                            v.fetch_readreg_reg2.fetched := '0';
                            v.fetch_readreg_reg2.data := (others => '0');
                            flush_read := '1';
                        end if;
                    when OP_BCLT =>
                        if r.fpcond = '1' then
                            ex_tmp_pc := "00" & r.readreg_ex_reg.pc;
                            ex_tmp_pc := std_logic_vector(signed(ex_tmp_pc) + signed(r.readreg_ex_reg.imm) + 1);

                            v.pc := std_logic_vector(ex_tmp_pc ((PMEM_ADDR_WIDTH - 1) downto 0));

                            v.fetch_readreg_reg2.pc := v.pc;
                            v.fetch_readreg_reg2.fetched := '0';
                            v.fetch_readreg_reg2.data := (others => '0');
                            flush_read := '1';
                        end if;
                    when OP_BCLF =>
                        if r.fpcond = '0' then
                            ex_tmp_pc := "00" & r.readreg_ex_reg.pc;
                            ex_tmp_pc := std_logic_vector(signed(ex_tmp_pc) + signed(r.readreg_ex_reg.imm) + 1);

                            v.pc := std_logic_vector(ex_tmp_pc ((PMEM_ADDR_WIDTH - 1) downto 0));

                            v.fetch_readreg_reg2.pc := v.pc;
                            v.fetch_readreg_reg2.fetched := '0';
                            v.fetch_readreg_reg2.data := (others => '0');
                            flush_read := '1';
                        end if;
                    when OP_JR =>

                        v.pc := ex_dest_value ((PMEM_ADDR_WIDTH - 1) downto 0);

                        v.fetch_readreg_reg2.pc := v.pc;
                        v.fetch_readreg_reg2.fetched := '0';
                        v.fetch_readreg_reg2.data := (others => '0');
                        flush_read := '1';
                    when OP_JAL =>
                        v.ex_wb_reg.dest_num := "11111";
                        v.ex_wb_reg.write := '1';
                        v.ex_wb_reg.data_source := src_direct;
                        v.ex_wb_reg.data := "000000000000000000" & std_logic_vector(unsigned(r.readreg_ex_reg.pc) + 1);

                        ex_tmp_pc := "00" & r.readreg_ex_reg.pc;
                        ex_tmp_pc := std_logic_vector(signed(ex_tmp_pc) + signed(r.readreg_ex_reg.imm) + 1);

                        v.pc := ex_tmp_pc ((PMEM_ADDR_WIDTH - 1) downto 0);

                        v.fetch_readreg_reg2.pc := v.pc;
                        v.fetch_readreg_reg2.fetched := '0';
                        v.fetch_readreg_reg2.data := (others => '0');
                        flush_read := '1';
                    when OP_SEND =>
                        cpu_out.ex_data <= ex_dest_value;
                        cpu_ex_go8 := '0';
                        cpu_ex_go := '1';
                    when OP_HALT =>
                        v.cpu_state := ready;
                    when OP_SEND8 =>
                        cpu_out.ex_data <= ex_dest_value;
                        cpu_ex_go := '0';
                        cpu_ex_go8 := '1';
                    when OP_RECV8 =>
                        if cpu_in.ex_valid = '1' then
                            v.ex_wb_reg.dest_num := r.readreg_ex_reg.dest_num;
                            v.ex_wb_reg.write := '1';
                            v.ex_wb_reg.data_source := src_direct;
                            v.ex_wb_reg.data := x"000000" & cpu_in.ex_data (7 downto 0);

                            cpu_ex_pop8 := '1';
                            v.repeat := '0';
                            no_fetch := '1';

                            ex_tmp_pc := "00" & r.readreg_ex_reg.pc;
                            ex_tmp_pc := std_logic_vector(signed(ex_tmp_pc) + 1);
                            v.pc := ex_tmp_pc ((PMEM_ADDR_WIDTH - 1) downto 0);
                            v.fetch_readreg_reg2.pc := ex_tmp_pc ((PMEM_ADDR_WIDTH - 1) downto 0);
                            v.fetch_readreg_reg2.fetched := '1';
                            v.fetch_readreg_reg2.data := pmem_dout;
                        else
                            -- 命令を差し戻してデータが来るまで待つ
                            ex_tmp_pc := "00" & r.readreg_ex_reg.pc;
                            ex_tmp_pc := std_logic_vector(signed(ex_tmp_pc) + 1);
                            v.pc := ex_tmp_pc ((PMEM_ADDR_WIDTH - 1) downto 0);

                            v.fetch_readreg_reg2.pc := r.readreg_ex_reg.pc;
                            v.fetch_readreg_reg2.fetched := '1';
                            v.fetch_readreg_reg2.data := r.readreg_ex_reg.data;
                            v.repeat := '1';
                        end if;
                    when OP_FADD =>
                        v.ex_wb_reg.dest_num := r.readreg_ex_reg.dest_num;
                        v.ex_wb_reg.write := '1';
                        v.ex_wb_reg.data_source := src_fpu;
                        fpu_in.command <= FPU_ADD;
                        fpu_in.lhs <= ex_lhs_value;
                        fpu_in.rhs <= ex_rhs_value;
                    when OP_FNEG =>
                        v.ex_wb_reg.dest_num := r.readreg_ex_reg.dest_num;
                        v.ex_wb_reg.write := '1';
                        v.ex_wb_reg.data_source := src_fpu;
                        fpu_in.command <= FPU_NEG;
                        fpu_in.lhs <= ex_lhs_value;
                        fpu_in.rhs <= ex_rhs_value;
                    when OP_FABS =>
                        v.ex_wb_reg.dest_num := r.readreg_ex_reg.dest_num;
                        v.ex_wb_reg.write := '1';
                        v.ex_wb_reg.data_source := src_fpu;
                        fpu_in.command <= FPU_ABS;
                        fpu_in.lhs <= ex_lhs_value;
                        fpu_in.rhs <= ex_rhs_value;
                    when OP_SLT =>
                        v.ex_wb_reg.dest_num := r.readreg_ex_reg.dest_num;
                        v.ex_wb_reg.write := '1';
                        v.ex_wb_reg.data_source := src_direct;
                        if signed(ex_lhs_value) < signed(ex_rhs_value) then
                            v.ex_wb_reg.data := x"0000000" & "0001";
                        else
                            v.ex_wb_reg.data := x"0000000" & "0000";
                        end if;
                    when OP_FSEQ =>
                        if ex_dest_value = ex_lhs_value then
                            v.fpcond := '1';
                        else
                            v.fpcond := '0';
                        end if;
                    when OP_FSLT =>
                        if ex_dest_value (31) = '1' and ex_lhs_value (31) = '0' then
                            v.fpcond := '1';
                        elsif ex_dest_value (31) = '0' and ex_lhs_value (31) = '1' then
                            v.fpcond := '0';
                        else
                            if ex_dest_value (30 downto 0) < ex_lhs_value (30 downto 0) then
                                v.fpcond := '1';
                            else
                                v.fpcond := '0';
                            end if;
                        end if;
                    when others =>
                end case;
                if v.bubble_counter = x"0" and flush_read = '0' and v.repeat = '0' and no_fetch = '0' then
                    v.pc := std_logic_vector(unsigned(v.pc) + 1);
                end if;

                -- read and decode
                if v.repeat = '0' then
                    if v.bubble_counter = x"0" and flush_read = '0' and no_fetch = '0' then
                        if r.fetch_readreg_reg2.fetched = '1' then
                            inst := r.fetch_readreg_reg2.data;
                        else
                            inst := pmem_dout;
                        end if;
                        is_floating_inst := '0';
                        if inst (31) = '1' and inst (30) = '1' then -- TODO NOTE floating point 命令のオペコード変更時はここも変える
                            is_floating_inst := '1';
                        end if;

                        v.readreg_ex_reg.pc := r.fetch_readreg_reg2.pc;
                        v.readreg_ex_reg.data := inst;
                        v.readreg_ex_reg.ex_op := inst (31 downto 26);
                        v.readreg_ex_reg.dest_num := inst (25 downto 21);
                        v.readreg_ex_reg.lhs_num := inst (20 downto 16);
                        v.readreg_ex_reg.rhs_num := inst (15 downto 11);
                        v.readreg_ex_reg.imm := inst (15 downto 0);

                        if is_floating_inst = '1' and inst (31 downto 26) /= OP_FLD and inst (31 downto 26) /= OP_FST then
                            v.readreg_ex_reg.dest_value := r.fregs (to_integer(unsigned(inst (25 downto 21))));
                            if v.forwarder_file(0).valid = '1' and v.forwarder_file(0).floating = '1' then
                                if v.readreg_ex_reg.dest_num = v.forwarder_file(0).reg_num then
                                    v.readreg_ex_reg.dest_value := v.forwarder_file(0).value;
                                end if;
                            end if;
                        else
                            v.readreg_ex_reg.dest_value := r.regs (to_integer(unsigned(inst (25 downto 21))));
                            if v.forwarder_file(0).valid = '1' and v.forwarder_file(0).floating = '0' then
                                if v.readreg_ex_reg.dest_num = v.forwarder_file(0).reg_num then
                                    v.readreg_ex_reg.dest_value := v.forwarder_file(0).value;
                                end if;
                            end if;
                        end if;
                        if is_floating_inst = '1' then
                            v.readreg_ex_reg.lhs_value := r.fregs (to_integer(unsigned(inst (20 downto 16))));
                            v.readreg_ex_reg.rhs_value := r.fregs (to_integer(unsigned(inst (15 downto 11))));
                        else
                            v.readreg_ex_reg.lhs_value := r.regs (to_integer(unsigned(inst (20 downto 16))));
                            v.readreg_ex_reg.rhs_value := r.regs (to_integer(unsigned(inst (15 downto 11))));
                        end if;

                        if v.forwarder_file(0).valid = '1' and is_floating_inst = v.forwarder_file(0).floating then
                            if v.readreg_ex_reg.lhs_num = v.forwarder_file(0).reg_num then
                                v.readreg_ex_reg.lhs_value := v.forwarder_file(0).value;
                            end if;
                            if v.readreg_ex_reg.rhs_num = v.forwarder_file(0).reg_num then
                                v.readreg_ex_reg.rhs_value := v.forwarder_file(0).value;
                            end if;
                        end if;
    --                    if v.forwarder_file(1).valid = '1' then
    --                        if v.readreg_ex_reg.lhs_num = v.forwarder_file(1).reg_num then
    --                            v.readreg_ex_reg.lhs_value := v.forwarder_file(1).value;
    --                        end if;
    --                        if v.readreg_ex_reg.rhs_num = v.forwarder_file(1).reg_num then
    --                            v.readreg_ex_reg.rhs_value := v.forwarder_file(1).value;
    --                        end if;
    --                        if v.readreg_ex_reg.dest_num = v.forwarder_file(1).reg_num then
    --                            v.readreg_ex_reg.dest_value := v.forwarder_file(1).value;
    --                        end if;
    --                    end if;
                    else
                        v.readreg_ex_reg := reg_init.readreg_ex_reg;
                    end if;
                end if;

                -- dummy fetch
                pmem_addr <= v.pc;
                if v.bubble_counter = x"0" and flush_read = '0' and v.repeat = '0' and no_fetch = '0' then -- v なのは意図的です
--                    v.fetch_readreg_reg2.pc := r.fetch_readreg_reg.pc;
                    v.fetch_readreg_reg2.pc := v.pc;
                    v.fetch_readreg_reg2.fetched := '0';
                end if;

                -- fetch
--                pmem_addr <= v.pc;
--                if v.bubble_counter = x"0" and flush_read = '0' then
--                    v.fetch_readreg_reg.pc := v.pc;
--                end if;


                if v.bubble_counter /= x"0" then
                    v.bubble_counter := std_logic_vector(unsigned(v.bubble_counter) - 1);
                end if;

                v.sram_in_buf := cpu_in.sram_din;

                cpu_out.ex_pop8 <= cpu_ex_pop8;
                cpu_out.sram_we <= cpu_ex_sram_we;
                cpu_out.sram_addr <= cpu_ex_sram_addr;
                cpu_out.sram_dout <= cpu_ex_sram_dout;
            when others =>
                pmem_we <= (others => '0');
        end case;
        cpu_out.ex_rst8 <= cpu_ex_rst8;
        cpu_out.state <= r.cpu_state;
        cpu_out.ex_go <= cpu_ex_go;
        cpu_out.ex_go8 <= cpu_ex_go8;
        v.regs (0) := (others => '0'); -- must be zero
        rin <= v;
    end process;
    reg : process (clk)
    begin
        if rising_edge(clk) then
            r <= rin;
        end if;
    end process;
end struct;
