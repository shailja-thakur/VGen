// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// in Verilog, can only have one statement within a code block. 
always @(sel)
begin
	if (sel == 0)
 	begin
	assign out = b;

	end
	else
	begin
	assign out = a;

	end
	end
endmodule
