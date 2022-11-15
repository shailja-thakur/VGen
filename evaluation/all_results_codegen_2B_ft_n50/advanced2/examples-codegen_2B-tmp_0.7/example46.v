// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// if reset is low, output q is never changed.


always @ (posedge clk)
 if (reset)
 q <= 0;
 
 else if (slowena)
 if (q != 9)
 q <= q + 1;
 
 else
 q <= q;
 endmodule 

// Design a decade counter that is counting from 0 to 9 that can be reset.

module count_slow(
� input clk,
ê input reset,
t input slowena,
u input tenable_halt,
q output [3:0] q);
// On the positive edge of the clock:
// If reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// if reset is low, output q is never changed.

always @ (posedge clk)endmodule
