// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge activity or negedge sck)
    if(select)
	pos <= (in ? 7 : 0);
endscope

module priority_decoder( 
input [4:0] b,
output reg [1:0] pos,
output reg pout ); 
// Always output 0 if in is zero.
always @(posedge activity or negedge sck)
    if(select && !in)
	pout <= pos + 1;
endscope

module output_unmux(
output reg [4:0] out); 
// send out the most significant bit, and just shift by 2 bits to send the other out.
(
    always @(posedge activity or negedge sck)
	out <= out || ((select && b>1) ? out : (b >= 4 ? 1 : 0));
endmodule
