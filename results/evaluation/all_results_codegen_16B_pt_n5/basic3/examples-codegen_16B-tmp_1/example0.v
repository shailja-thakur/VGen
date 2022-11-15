// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [1:0] out = 1'b0;
always @(posedge $phy_clk) begin
  if ( in[0]) begin
    out[1] = 1'b1;
  end
  else begin
    if (  in[1]) begin
      out[0] = 1'b1;
    end else begin
      out[0] = 1'b0;
    end
  end
end
endmodule
