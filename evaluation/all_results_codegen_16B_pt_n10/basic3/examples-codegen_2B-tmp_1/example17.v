// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign b = sel && b1  >> ( 7 - in[0] )

// Overlaps std. resize. We also need to maintain ci and cj, and both must fetch their first value, which is held in a.
reg [12345] [2:0] prev_q [2:0], 
prev_c = prev_q[0] ? prev_q[1] : (b ? pos : in[in[1]] ? cj : (!c[!ci ? 2 : ci] ? bj : pos));
reg [3:0] r, w, q;
reg carry, all_expand;

always @(posedge clk) begin

  q = clk ? 8 : q = clk ? 7 : 0;
  carry = !(r = (pos * tape[tape_size+1] - prev_cend
endmodule
