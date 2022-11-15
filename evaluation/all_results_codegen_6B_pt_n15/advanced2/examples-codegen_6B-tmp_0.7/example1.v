// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or negedge slowena)
if (slowena) begin
    if (reset) begin
        q <= 0;
    end
    else if (q <= 9) begin
        q <= q + 1;
    end
end

// On the negative edge of the clock:
// if the ena input is high, reset the output q to 0.
// Otherwise, if q is 9, set q to 10, and if q is not 9, decrement q by 1.
always @(negedge clk or negedge slowena)
if (slowena) begin
    if (slowena) begin
        q <= 0;
    end
    else if (q <= 9) begin
        q <= 10;
    end
end

// On the positive edge of the clock:
// if q is 9, set q to 0, otherwiseendmodule
