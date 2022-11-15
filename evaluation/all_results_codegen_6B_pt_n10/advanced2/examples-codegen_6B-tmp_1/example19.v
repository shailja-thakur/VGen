// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
case clock:
    if (slowena) begin
        q <= 0; // trigger the sequence: 10, 9, ..., 0, 1, ..
        default; // reset, ena high, nothing else.
    end
    else begin
        if (not reset) begin
            q <= 9; // q == 9 with strict deactivation
        end
    else begin
        q <= 5; // q == 9 with partial deactivation
    end
end

// On the negated negative edge of the clock:
// Note that the control logic counts independently to both the clock and the reset.
// Also, note that if the trigger line is active and went low and the counter expired,
// the control line is forced low.
// TODO: Think about timing, this should only expire when bucketing is happening.
if ((slowena or not reset) and clk) begin
    q <= 1 -end
endmodule
