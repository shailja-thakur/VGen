// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (clk > rst) begin
  if (rst) begin
    pos <= 0;
  end else begin // sequential mode
    if (sel) begin
      pos <= get_bit(in);
    // active low
    else begin
      pos <= 1 ^ get_bit(in);
    end
  end
end
end
endmodule
