library verilog;
use verilog.vl_types.all;
entity alufinal_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        ALU_Sel         : in     vl_logic_vector(2 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end alufinal_vlg_sample_tst;
