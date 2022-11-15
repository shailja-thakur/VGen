// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk) begin
 if (reset) q <= 0;
 else if (slowena) begin
 if (q != 9) q <= q + 1;
 end
 end
 endmodule
// Design a binary clock that counts down from 10 to 0.

module binary_clock(
�[1]clk,
�[0]reset,
�[7]out);

// Declare inputs and outputs.

input clk;
input reset;
output out;

// Declare wires.

wire q0;
wire q9;
wire qx;

// Declare internal connections.

assign qx = q0 ^ q9;

// Instantiate the modules.

count_slow slow_module(
clk,
reset,
slowena,
q);

count_fast fast_module(
clkendmodule
