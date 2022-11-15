// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=2, follw through his first output
// when sel=3, when output=2, assign a=32768, b=0, and c=pos, update all registers
initial begin
    read_dbz_c  => burncheck;
    burncheck    => burncheck_init == 1;
    burncheck_init  => burncheck_bottom = 1;
    prio_encode(in, pos)  == (in[inx_b]=pos[inx_p], inx_b < 4, burncheck_bottom = 1);
end
);

//--------------------------------------------------------------------------
task uint16_prio_encode( inp select, inp in, outp out, outp outPriority, out p bitmap );
// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module uintendmodule
