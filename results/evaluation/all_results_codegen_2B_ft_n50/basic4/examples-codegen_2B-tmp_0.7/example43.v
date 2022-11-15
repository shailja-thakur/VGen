// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
reg [4:0] out_temp;
always @(sel)
case(sel)
0 : out_temp <= a;
1 : out_temp <= b;
endcase
assign out = out_temp;
endmodule
