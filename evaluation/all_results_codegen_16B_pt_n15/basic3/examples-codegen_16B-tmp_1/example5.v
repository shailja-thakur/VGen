// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, and all inputs are low, assign a to out
always @(posedge stb) begin
  if(in != 3'b011) pos <= 3'b000;
  else if((in[0]) || (in[1]) || (in[2]) || (sel == 1)) pos <= 3'b010;
  else pos <= 3'b000;
end
endmodule
