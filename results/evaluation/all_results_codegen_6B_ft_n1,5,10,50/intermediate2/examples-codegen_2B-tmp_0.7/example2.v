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
// The reset signal is active low.
// The clock signal is active high.

// wires used here:
// clk:   clk_n
// reset: reset_n
// q:     q_o

wire [3:0] r;

initial begin
  r = [3:0];
  q = 1;
end

always @(posedge clk)
  if (reset == 0)
    r = [3:0];
  else
    r = r + 1;
  q = q + 1;
end

initial begin
  q = 1;
end

initial begin
  r = [3:0];
  q = 1;
end

initial begin
  q = 1;
end

// The usage of wires is as follows:
// clk:   clk_n
// reset: reset_endmodule
