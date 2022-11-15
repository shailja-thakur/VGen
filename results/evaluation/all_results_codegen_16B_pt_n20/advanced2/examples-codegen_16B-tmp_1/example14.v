// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// A final rising edge sets the value of output q to 0x1.
// Subsequent rising edges adjacent to the initial state will keep the value of 
// output q to 0x1. On the negative edge, the value of output q quickly starts
// increasing back to 0 (here, on the falling edge).

always @* begin
    // Set output q in the "Natural" mode, from 0 to 9.
    if ((reset == 1) || (slowena == 1))  q <= 0;
    else if ((fastena == 1) && (q < 0x10)) q <= q + 1; 
end

always @* begin
    // Set output q in the "One rising edge delay" mode, 
    // from 0 to 9 on the second rising edge following a falling edge.
    if ((counter == 0)     && (slowena == 0))  q <= 0;end
endmodule
