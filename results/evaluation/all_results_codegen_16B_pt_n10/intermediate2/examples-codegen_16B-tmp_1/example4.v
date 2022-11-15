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
always @(posedge clk or posedge reset) begin
  if (reset) q <= 0;
  else if (q == 12) q <= 1; 
  else q <= q + 1;
end
// a simple way to implement a counter is to tell the synthesizer to delay any values that
// it finds that are not 1
_4BIT_DELAY #( .DELAY(0) ) organization( sequential );
// _4BIT_DELAY is a synthesized module that has a 4 bit input and an 8 bit output
endmodule
