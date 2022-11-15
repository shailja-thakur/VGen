// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
wire [2:0] b;

always @(posedge in) case (b)
begin
  if (pos==0)
    b = in;
end

always @(posedge pos)
case (pos)
begin
  if (b == 1)
    pos = 1;
end
endmodule
