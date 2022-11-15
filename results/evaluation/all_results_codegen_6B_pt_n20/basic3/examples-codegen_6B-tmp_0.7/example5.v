// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk) 
  priority_encoder.sel <= (in[0] & in[1] & in[2]);
// Read priority encoder and assign output to port.
reg [1:0] pos;
always @(posedge clk) 
  begin
    pos <= priority_encoder.sel;
  end
endmodule
