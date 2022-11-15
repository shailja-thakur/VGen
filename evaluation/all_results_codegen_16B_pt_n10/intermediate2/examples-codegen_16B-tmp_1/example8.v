// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
assign q = (reset == 0)
  ? 0 : q + 1
  | q == 12
  ? 0 : q + 1
  ; 
// clk = rising-edge updated q
always @(posedge clk or posedge reset) begin
  if (clk) begin
    q <= q + 1;
    if (q == 12) q <= 0;
  end else begin
    q <= q;
  end
end
endmodule
