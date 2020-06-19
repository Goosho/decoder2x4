library verilog;
use verilog.vl_types.all;
entity decoder2x4_vlg_sample_tst is
    port(
        din             : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end decoder2x4_vlg_sample_tst;
