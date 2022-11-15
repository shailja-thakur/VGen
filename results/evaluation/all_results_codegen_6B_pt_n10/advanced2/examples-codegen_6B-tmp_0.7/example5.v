// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always_comb
begin
    if (reset <= 0) q <= 0;
    else if (slowena <= 0) q <= 0;
    else if (slowena > 0) begin
        if (q <= 9) q <= q + 1;
        else q <= 0;
    end
end

// On the negative edge of the clock:
// if slowena is high, then only decrement the output q if q is not 0.
// Otherwise, only decrement the output q if q is not 7.
always_comb
begin
    if (slowena <= 0) begin
        q <= q - 1;
        if (q == 0) q <= 7;
    end
    else if (slowena > 0) begin
        if (q == 0) q <= 6;
        else q <= q - 1;
    end
end

module count_fast(
endmodule
