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
wire [3:0] reg;

void main() {
  // Make sure we're resetting the counter when we start
  // We'll also reset it to 1, so we can start counting from 1 anyway
  if (reset) {
    q = 1;
  }
  
  // On the first clk transition, we reset the counter to 1
  if (clk == 1) {
    q = 1;
  }
  
  // On the first clk transition, we reset the counter to 1
  if (clk == 1) {
    q = 1;
  }
  
  // On the first clk transition, we reset the counter to 1
  if (clk == 1) {
    q = 1;
  }
  
  // on the second clk transition, we go to the third state
  while (clk == 1endmodule
