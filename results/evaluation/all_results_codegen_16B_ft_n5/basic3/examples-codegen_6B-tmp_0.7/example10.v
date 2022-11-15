// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
begin
  if (sel)
  begin
    if (r_sel)
    begin
      if (neg_in)
      begin
        if (r_pos)
        begin
          pos <= 0;
        end
      end
    end
  end
end

module priority_encoder_test( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
begin
  if (sel)
  begin
    if (r_sel)
    begin
      if (neg_in)
      begin
        if (r_pos)
        begin
          pos <= 0;
        end
      end
    end
  end
end

endmodule
