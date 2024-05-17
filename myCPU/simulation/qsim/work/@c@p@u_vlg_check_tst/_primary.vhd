library verilog;
use verilog.vl_types.all;
entity CPU_vlg_check_tst is
    port(
        ALU             : in     vl_logic_vector(31 downto 0);
        ALUop           : in     vl_logic;
        ALUSrcB         : in     vl_logic;
        Clear           : in     vl_logic;
        GroupWrite      : in     vl_logic_vector(31 downto 0);
        INS             : in     vl_logic_vector(31 downto 0);
        LED01           : in     vl_logic_vector(6 downto 0);
        LED02           : in     vl_logic_vector(6 downto 0);
        LED03           : in     vl_logic_vector(6 downto 0);
        LED04           : in     vl_logic_vector(6 downto 0);
        MemToReg        : in     vl_logic;
        MemWrite        : in     vl_logic;
        overflow        : in     vl_logic;
        PCSource        : in     vl_logic;
        read_data2      : in     vl_logic_vector(31 downto 0);
        RegDst          : in     vl_logic;
        RegWrite        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CPU_vlg_check_tst;
