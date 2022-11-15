// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// Create an unnamed wire that holds intermediate results
// in the expression shown.
assign out = 
// Create a right inclusive OR gate 
assign out =
// Create a right inclusive AND gate
// Create a SELECT statement
always @(*)
begin
	case (sel)
// when sel = 0 assign a to out
	sel = 0: out = a;
// when sel = 1 assign b to out
	sel = 1: out = b;
// default nothing
	default: out = a;
	endcase 
end 
endmodule
