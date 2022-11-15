// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the ena input is low but the output q is 9, shift the output down to 8, and if that is the last bit output on q, add 1 and put output on q again.

 always @(posedge clk) begin
 if (reset || (slowena == 1'b0 && q == 4'h9))
 q <= 4'h0;
 else
 if (slowena == 1'b1 && q != 4'h0)
 q <= q + 4'b0001;
 end

endmodule
