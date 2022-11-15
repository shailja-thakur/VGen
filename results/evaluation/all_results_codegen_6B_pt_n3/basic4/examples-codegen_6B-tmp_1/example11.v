// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or posedge rst) // cover branch
.to_logic w_sel;
// Core multiplexer.
input_wire a_sel, b_sel;
always @time_constant (50, ratio=50) // cover branch
output compatible timing ps, ps;
always @(posedge clk or posedge rst) // cover branch
input_wire w_sel, dlck, w0, w1, w2, w3;
always @from_reset {
ps <= ~dlck <or> select({ w_sel = 1; w_sel = 0; });
compatible dlck_types ps, ps;
}
// Assign correct w to ps to override init ~dlck.
always @(posedge clk or posedge rst) // cover branch
input_wire w_sel, w0, wendmodule
