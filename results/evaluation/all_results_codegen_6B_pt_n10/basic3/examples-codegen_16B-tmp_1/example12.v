// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or sel)
begin
	if (in[2] !== 1)
	begin
	// =====> this is the general rising_edge circuit for all of the inputs
	// on all of the days...
 
	// catch the bugness here: in[2] becomes the 4 st function of the toggle of the clock
	// that is, if it toggle ff => 01 then 010 => 011 they will all be taken care of using this.
	if (in[2] !== in[1] && in[2] !== in[0])
	begin
	 
	// this would be 01, catch it here
	if (in[0] !== 1 && in[1] !== 1)
	begin
	 
	// this iz 1, 011
	pos[1] <= 1'b1;
	end
end
end
end
endmodule
