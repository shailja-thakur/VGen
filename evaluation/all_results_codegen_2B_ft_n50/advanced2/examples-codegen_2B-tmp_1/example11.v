// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Increment if not ena or q = 9, depending on the clock type (gated or antagonistic).


always @ (posedge clk) 
idleestonesol(slowena, reset, q);
always @ (ouncedge slowly)
dospeedsol(slowena, reset, q, 4'b0); 

endmodule
