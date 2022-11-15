// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(*)
begin
    // If the ena input is high, increment Q.
    if (slowena == 1)
    {
        q[0] = (q[0] + 1) % 10;
    }
    // Otherwise, reset Q.
    if (slowena == 0)
    {
        q[0] = 0;
    }
end

// On the positive edge of the slow clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is low and q is not 9.

always @(*)
begin
    // If the ena input is low, increment Q.
    if (slowena == 1)
    {
        q[0] = (q[0] + 1) % 10;
    }
    // Otherwise, reset Q.end
endmodule
