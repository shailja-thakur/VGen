// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(sel or a or b)
begin : MUX
	if (sel == 0)
	begin
	out = a;
	end
	else if (sel == 1)
	begin
	out = b;
	end
	else 
	begin
	out = 5'bZZZZZZZZ;
	end
end
endmodule
