// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Store the q value in qs.
// Store the next q to be received in qr.
 // The tickslope is generated by
 //     128 reps of doing:
 //        wait tb, ENA, q, 10
 //        dly 210
 //        do
 //            if reset=high, reset q2 and q4 to 0
 //            if q2 not 9, increment q2
 //            wait tb, ENA, q2, 30
 //            if q4 not 9, increment q4
 //            wait tb, ENA, q4, 30
 //        done
 //
 // Which amounts to rate 128, plus two extra wait cycles.
//
//   initial TICKSLOPE/128 = (0+2)+210+2t8 = 258, where t8 = 242
//
// The counter itself consists of a pair of unsigned counters fed by the clock endmodule