// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
begin
  if (sel)
  begin
    if (in[0])
    begin
      if (sel)
      begin
        pos <= 1;
      end
    end
  end
end

endmodule
