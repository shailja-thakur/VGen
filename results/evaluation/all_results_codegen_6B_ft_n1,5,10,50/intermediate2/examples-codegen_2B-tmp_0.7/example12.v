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
wire [3:0] r; 
always @(posedge clk)
  if (r == 1'b0) q <= 1'b1;
  else if (q == 13'b1) q <= 1'b1;
  else q <= q + 1;

// the following is the control signal on the counter that updates the q
wire [3:0] c;
// when the counter is reset, c is 1
wire [3:0] r;
always @( posedge clk )
  if (r == 1'b0) c <= 1'b0;
  else c <= 1'b1;
  
endmodule
