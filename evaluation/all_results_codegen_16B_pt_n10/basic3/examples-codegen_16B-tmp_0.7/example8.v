// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
always @(posedge clk) begin
  case(sel)
    assign pos = {0,0,0,1};
    case (in)
      1:  assign pos = {0,1,0,0};
      0:  assign pos = {0,0,1,0};
    endcase
  end
endmodule
