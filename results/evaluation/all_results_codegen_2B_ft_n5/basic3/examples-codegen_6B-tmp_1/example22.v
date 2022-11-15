// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
parameter sel=1'b1; 
always @(*) 
begin 
	casex (in) //Casex for 3-bit input 
	3'b111: pos=sel?2'b11:2'b01;	//(c,d)
	3'b110: pos=sel?2'b10:2'b01;	//(b,c)
	3'b101: pos=sel?2'b10:2'b01;	//(a,b)
	3'b100: pos=sel?2'b10:2'b01;	//(a,c)
	3'b011: pos=sel?2'b10:2'b01;	////(a,d)
	3'b000: pos=sel?2'b10:2'b01;	//(end
endmodule
