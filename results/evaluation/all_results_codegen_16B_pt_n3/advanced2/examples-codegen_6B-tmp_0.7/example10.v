// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The output q is a 3-bit value: 000 = 0, 001 = 1, and so on.

always @(posedge clk)
    if (reset == 0) begin
        q <= 0;
    end
    else if (slowena == 1 && q != 9) begin
        q <= 1;
    end
    else q <= q + 1;
end

endmodule
