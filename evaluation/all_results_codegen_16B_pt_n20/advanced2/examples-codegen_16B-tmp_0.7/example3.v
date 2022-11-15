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
    if (reset) q <= 0;
    else if (slowena && q < 9) q <= q + 1;
end

// On the negative edge of the clock:
// If the ena input is high and q is not 9, set q to 9 and de-increment.
// Otherwise, set q to 0.

always @(negedge clk) begin
    if (slowena && q != 9) q <= q - 1;
    else q <= 0;
end

// The number of decades is determined by the number of leading zeros in the binary representation of q.
// Since q is an integer, it has a fixed number of bits. For example, if q=17, then q=1111,
// and the number of decades is 3 (because the leading zeros are 1111_000).

always @endmodule
