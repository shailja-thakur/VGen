// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
  pos = (in[0] | in[1]) & 3;
  out = ~pos;
  pos = pos << 1;
  pos = pos + (in[1] & ~in[0]);
end
);
priority_encoder p;

// This is a 2-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder2( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
  pos = (in[0] | in[1]) & 3;
  out = ~pos;
  pos = pos << 1;
  pos = pos + (in[1] & ~in[0]);
end
);
endmodule
