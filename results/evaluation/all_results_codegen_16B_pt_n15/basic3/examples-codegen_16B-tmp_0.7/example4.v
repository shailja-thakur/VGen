// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
always @(posedge clk) begin
  if(in[0] | in[1]) { pos <= 2; }
  else begin
    pos <= 0;
  end
end

/////////////////////////////////////////////////////////////////////////////
// This is a priority encoder with 3-bit input. If none of the input bits are high, output is zero.
// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [3:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
always @(posedge clk) begin
  if(in[0] | in[1] | in[2]) { pos <= 3; }end
endmodule
