// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// Write code for an always block that will assign out to either a or b when sel is low
always @ (sel)
	begin
	// $display("sel is low");
	if (sel == 1'b0)
	// $display("%b = %b", out, a);
	assign out = a;
	else
	// $display("%b = %b", out, b);
	assign out =b;
	end
endmodule
