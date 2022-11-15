// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//
// On the negative edge of the clock:
// If slowena is high, then count in the opposite direction.
//
// On the positive edge of the clock:
// If slowena is high, then count in the opposite direction.
//
// On the negative edge of the clock:
// If slowena is high, then count in the opposite direction.
//
// The table below shows the output q on a positive clock.
//
//                                     slowena
//                                       |
//                                       v
//                                       |
//                                       v
//                                       |
//                                       v
//                                       |
//                                       v
//                                       |
//                                       v
//                                       |
//                                       v
//                                       |
//                                endmodule
