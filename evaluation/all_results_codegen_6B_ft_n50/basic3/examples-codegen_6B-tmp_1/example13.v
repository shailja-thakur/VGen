// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign b[1] = ((~in[2])&(~in[1])&(~in[0])) | ((~in[2])&(~in[1])&(in[0]));
assign b[0] = ((~in[2])&(~in[1])&(~in[0])) | ((~in[2])&(~in[1])&(in[0]));

//assign pos = only bits in and I0 are active
always @ (in)
if(b==2'b00)
pos=2'b00;
else 
if(b==2'b11)
pos=2'b11;
else
pos=2'b10;
endmodule
