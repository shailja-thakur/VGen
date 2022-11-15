// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// On the negative edge of the clock:
// if ena is high, then set q = 0. 
// Otherwise, decrement q if q is not 0.

always @(posedge clk)
begin
    if (reset) begin
        q <= 0;
    end
    else if (slowena == 1 && q != 9) begin
        q <= 1;
    end
    else if (slowena == 0 && q != 0) begin
        q <= -1;
    end
end

// Create a module to count a number in a decade from 0 through 99, inclusive.

module count_fast(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwiseendmodule
