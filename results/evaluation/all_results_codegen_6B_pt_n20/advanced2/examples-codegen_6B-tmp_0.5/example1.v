// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk)
begin
    if (reset)
        q <= 0;
    else if (slowena)
        q <= (slowena == 1 && q < 9) ? q + 1 : q;
end

// On the negative edge of the clock:
// if slowena is high, then increment the output q if q is not 0 and not 9.
// Otherwise, reset the output q to 0.
always @(negedge clk)
begin
    if (slowena)
        q <= (slowena == 1 && q > 0) ? q + 1 : q;
    else
        q <= 0;
end

endmodule
