// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk, slowena, reset) begin
    if (slowena)
        q <= 0;
end

// On the positive edge of the clock:
// if reset is high, and q is high, then q is decremented and reset.
// If reset is high, and q is low, q cannot be decrememnted; // 1-1 will flow here!
always @(posedge clk, slowena, reset) begin
    if ((~reset) && q[1] == 9) // reset process should be initiated with 0 value.
        q <= 0;				// so that it can't ever be decrememnted.
    if (slowena && (~reset) && (q==0) && (--q != 0))
        q <= 0;					// if q not reset and 0 decrememnts q post-adderl
end
endmodule
