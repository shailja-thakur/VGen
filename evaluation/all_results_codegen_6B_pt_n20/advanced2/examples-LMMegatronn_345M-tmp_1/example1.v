// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

wire clk_1hz;
wire clk_921600;
wire clk_66khz; 
			
clk_1hz clk_1hz(.clk(clk), .clk_921600(clk_921600), .clk_100hz(clk_100hz));

tonecount1_gate tone_gate1(.clk(clk), .gate(gateena), .reset(reset), .q(q)); 
			
endmodule
