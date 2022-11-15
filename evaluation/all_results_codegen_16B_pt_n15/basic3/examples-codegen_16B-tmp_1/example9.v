// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @* begin
  if (in[0]) pos <= 1'b0;
  else if (in[1]) pos <= 1'b1;
  else
  {
    pos <= 1'b0;
  }
end

always @(posedge clock) begin
  // Code for the individual bit
  if (posedge[clock]) {
#pragma debug transparent( clock, start, reset, in, helper, pos )
  } else begin
    pre_reset <= dea;
    reset <= 0;
    helper <= -1;
    start <= 1;
    _process_a <= 1;
    start <= 0;
  end
end

endmodule
