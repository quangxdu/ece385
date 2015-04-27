library verilog;
use verilog.vl_types.all;
entity mux16 is
    port(
        sel             : in     vl_logic_vector(3 downto 0);
        i1              : in     vl_logic_vector(7 downto 0);
        i2              : in     vl_logic_vector(7 downto 0);
        i3              : in     vl_logic_vector(7 downto 0);
        i4              : in     vl_logic_vector(7 downto 0);
        i5              : in     vl_logic_vector(7 downto 0);
        i6              : in     vl_logic_vector(7 downto 0);
        i7              : in     vl_logic_vector(7 downto 0);
        i8              : in     vl_logic_vector(7 downto 0);
        i9              : in     vl_logic_vector(7 downto 0);
        i10             : in     vl_logic_vector(7 downto 0);
        i11             : in     vl_logic_vector(7 downto 0);
        i12             : in     vl_logic_vector(7 downto 0);
        i13             : in     vl_logic_vector(7 downto 0);
        i14             : in     vl_logic_vector(7 downto 0);
        i15             : in     vl_logic_vector(7 downto 0);
        i16             : in     vl_logic_vector(7 downto 0);
        f               : out    vl_logic_vector(7 downto 0)
    );
end mux16;
