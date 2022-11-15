// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
reg [4:0] out;

always @ ( sel or a or b )
begin
	if ( sel == 0 ) begin
	out = a;
	end
	else begin
	out = b; // Erik's addition
	end
end

endmodule
