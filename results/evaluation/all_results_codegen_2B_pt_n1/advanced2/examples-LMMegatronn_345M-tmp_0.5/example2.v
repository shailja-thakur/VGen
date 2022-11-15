// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//
reg [10:0] q_1;
reg [10:0] q_2;
reg [10:0] q_3;
reg [10:0] q_4;
reg [10:0] q_5;
reg [10:0] q_6;
reg [10:0] q_7;
reg [10:0] q_8;
reg [10:0] q_9;
reg [10:0] q_10;
reg [10:0] q_11;
reg [10:0] q_12;
reg [10:0] q_13;
reg [10:0] q_14;
reg [10:0] q_15;
reg [10:0] q_16;
reg [10:0] q_17;
reg [10:0] q_18;
endmodule
