// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk) begin
 if(reset)
 q <= 0;
 else if(~q == 9 & slowena)
 q <= q + 1; // including the pseudo 0 case to prevent q from hitting the maximum value of 9
 else
 q <= q; // or not incrementing
end

// Could you make it so that the maximum value of q that it will reach is limited to 9?
// If you do, then how do you model the pseudo 0 value?

endmodule
