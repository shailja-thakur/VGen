// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge reset)
    if (reset)      q <= 0; 
    else if (enable) if (q != 9) q <= q + 1; 

// Report the final value of q on the positive edge of the slow clock. The initial value
// of q is 0 when the reset pin is low and it is set to 9 on the positive edge of the
// clock when reset is high. Report "enable" as 1 if that edge of the clock has been
// missed and count upwards to 9. Report "enable" as 0 if that edge has been seen.
//
// ## TOPOLOGY, RESET AND STARTUP ##
//
//        +---------+                                               +-------------+
//     clk |--**RST**| 2014  clk                                   ++-|SLOW^/16--| 2014
//           '--------^                               endmodule
