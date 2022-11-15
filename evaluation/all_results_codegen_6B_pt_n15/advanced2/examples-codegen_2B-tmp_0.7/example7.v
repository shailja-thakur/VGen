// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the ena input is high and the q is 9, then decrement the output q. 

always@(posedge clk)
begin
 if(reset)
 q <= 0;
 else
 if(slowena == 1)
 if(q == 9)
 q <= 0;
 else
 q <= q + 1;
 if((q == 0) && (slowena == 1))
 q <= 9;
 end
 endmodule
// Design a counter that counts from 0 to 9. Count the 0 for 5 cycles, then count the 1 for 4 cycles, etc.

module counter_4bit(clk, ena, reset, q);
input clk, reset, ena;
output [3:0] q;

// On the positive edge of the clock:
//
// if reset is high, reset the output q to 0. 
// Otherwise, only increment theendmodule
