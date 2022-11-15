// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always@( * )
	if (sel)
	begin
	assign out = b;
	end
	else
	begin
	assign out = a;
	end
endmodule
