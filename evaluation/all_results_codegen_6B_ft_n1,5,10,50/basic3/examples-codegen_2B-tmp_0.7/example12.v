// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (not in[0])
begin
  pos = (in[0] | in[1] | in[2]);
  output reg [1:0] pos;
end

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [3:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
always @ (not in[0])
begin
  pos = (in[0] | in[1] | in[2] | in[3]);
  output reg [3:0] pos;
end

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [4:0] in,
endmodule
