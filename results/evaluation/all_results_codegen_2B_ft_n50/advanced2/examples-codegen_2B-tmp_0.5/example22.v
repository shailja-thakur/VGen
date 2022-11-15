// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk)
begin
 if (reset)
 q <= 0;
 else if (slowena)
 if (q < 9)
 q <= q + 1;
 end
 endmodule
 
// Design a counter that counts from 0 through 9, inclusive

module count_slow_tb;

reg clk;
reg slowena;
reg reset;
reg [3:0] q;

initial
begin
 clk = 1'b0;
 reset = 1'b1;
 slowena = 1'b0;
 q = 4'b0000;
 #1 reset = 1'b0;
 #1 reset = 1'b1;
 #1 reset = 1'b0;
 #1 reset = 1'b1;
 #1 reset = 1'b0;
 #1 reset = 1'b1;
 #1 reset =endmodule
