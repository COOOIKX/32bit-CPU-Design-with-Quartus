library verilog;
use verilog.vl_types.all;
entity CPU is
    port(
        ALUop           : out    vl_logic;
        INS             : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        PCSource        : out    vl_logic;
        RegWrite        : out    vl_logic;
        MemToReg        : out    vl_logic;
        Clear           : out    vl_logic;
        ALUSrcB         : out    vl_logic;
        read_data2      : out    vl_logic_vector(31 downto 0);
        MemWrite        : out    vl_logic;
        RegDst          : out    vl_logic;
        overflow        : out    vl_logic;
        ALU             : out    vl_logic_vector(31 downto 0);
        GroupWrite      : out    vl_logic_vector(31 downto 0);
        LED01           : out    vl_logic_vector(6 downto 0);
        LED02           : out    vl_logic_vector(6 downto 0);
        LED03           : out    vl_logic_vector(6 downto 0);
        LED04           : out    vl_logic_vector(6 downto 0)
    );
end CPU;
