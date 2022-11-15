// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the ena input is low, do nothing.
always @(posedge clk)
 if (reset) q <= 4'b0000;
 else if (slowena && (q < 9)) q <= q + 1;
 endmodule


// Design a decade counter that counts from 0 through 9, inclusive

module count_slow_tb;

reg clk;
reg slowena;
reg reset;
wire [3:0] q;

count_slow slow_counter(clk, slowena, reset, q);

initial begin
clk = 1'b1;
slowena = 1'b1;
reset = 1'b0;
#10
reset = 1'b1;
#10
reset = 1'b0;
#10
slowena = 1'b0;
#10
slowena = 1'b1;
#endmodule
