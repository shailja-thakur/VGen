// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

wire ll [2:0] drive;

reg [5:0] σ;
reg [5:0] σt;


data out = {
  0, 1, 2, 3,
  0, 1, 2, 3 
}

// MIIS doesn't have enough registers
MUX2 <<<
uniform uint NB_SETS;

void illegal () noinline {}
void illegal () noinline {}

mux a_mux, b_mux;

always_comb ^ ( (a >= 0x30) ^ (b >= 0x30) ) {
  #pragma HLS ALIGN=2
  illegal();
}

always_comb ^ ( (a >= 0x30) ^ (b >= 0x30) ) {
  #pragma HLS ALIGN=2
  if (st1)endmodule
