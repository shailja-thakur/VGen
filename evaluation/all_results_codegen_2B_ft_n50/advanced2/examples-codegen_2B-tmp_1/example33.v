// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the ena input is low, q will stay high -1. Increment after the positive edge.

always @(posedge clk)
 if (reset)
 q <= 4'b0;
 else if (slowena && q < 4'b1001)
 case (q) 
 4'b0000: q <= q + 1; 
 4'b1101: q <= q + 1; 
 4'b0010: q <= q + 2; 
 4'b0001: q <= q + 3; 
 endcase 
 if (~slowena && q == 4'b1001)
 q <= 4'b1001; 
end


endmodule
