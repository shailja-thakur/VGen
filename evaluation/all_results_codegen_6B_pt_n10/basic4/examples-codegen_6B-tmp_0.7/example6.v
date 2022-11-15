// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(*) sel_rdy = sel;
always @(*) out_rdy = 1'b0;
handle sel_clk = sel;
handle clk = clk.none;
assign out = a;
assign out_rdy = out_rdy && sel_rdy;

endmodule
