// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// Whenever the ena input is low, and the q is not 9, increment the q.

always @(posedge clk)
 begin
 if (reset == 1'b1)
 q <= 4'b0000;
 else if (slowena == 1'b1)
 if (q != 4'b0)
 q <= q + 1;
 else
 q <= 4'b0000;
 end
endmodule
