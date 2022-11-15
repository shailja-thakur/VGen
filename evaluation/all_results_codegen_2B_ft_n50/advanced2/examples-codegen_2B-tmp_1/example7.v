// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// At the negative edge of the clock, the q of the output should be the size of the counter.

// Assign the Q equal to the value of the input as determined by the PRESS VALUE.
reg [3:0] dq;
`timescale 1ns / 1ps

// Different output values of slowena with "delay between press and output"
wire [3:0] dq_a_down = q[3:0] + 1'b1;
wire [3:0] dq_a_up = q[3:0] - 1'b1;
wire dq_a = dq[3:0];
wire dq_b = dq[3:0];
wire dq_c = q[3:0] - 1'b1;
wire dq_d = q[3:0] + 1'b1;
endmodule
