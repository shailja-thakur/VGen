// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
	always begin // assume fail
		if ( $readall ) begin
			sel = $sel;
		end
		else begin
			sel = 1;
		end
		if ( sel = 0 ) begin
			out = a;
		end
		else begin
			out = b;
		end
	end

	initial begin
		sel = ~$sel;
	end
endmodule
