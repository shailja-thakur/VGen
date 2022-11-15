// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
initial begin
    q <= 9'd0;
    if (reset) q <= 0;
    else if (ena && q < 9'd9) q <= q + 1;
end

// On the negative edge of the clock:
// decrement the output q if q > 0. 
// Otherwise, if both ena and q are low, reset the output.
initial begin
    if (slowena && q > 9'd0) q -= 1;
    else if (ena && ena && q == 9'd9) q >= 0;
    else q <= 3'd0;
end

endmodule
