// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If either of the above is flipped, depending on the value of the ena input,
// the q output will increment or decrement.

always @ (posedge clk, posedge reset)
begin
 if (reset)
 q <= 4'b0000;
 else if (slowena) begin
 if (q == 4'b1001)
 q <= 4'b0;
 else if (q != 4'b0)
 q <= q + 1'b1;
 end
 else
 q <= 4'b0;
 end
 endmodule



module count_slow_tb;

// Inputs and outputs
reg clk, slowena, reset;
wire [3:0] q;

// Instantiate the design block
count_slow my_module(
clk,
slowena,
reset,
q);

initial begin
// Initialize Inputsendmodule
