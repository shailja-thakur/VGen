// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the input is not high, the output q is not modified, and stays 9. 

// Otherwise if the input is high, reset the q to 0, and increment it by one every clock 
// raising cycle if the ena input is high.
// If reset is not high, increment the q if and only if the ena input is high.




// Whenever slowena is high, compare to 3
// Not observing the output q.
// Output q is connected at the next positive edge of the slow clock, if and only if
// reset is not high and the input is high.
// The reset and ena signals exist in a chain, and a new incoming that is high with 
// the next positive edge of the clock will be ignored, unless reset is high.

always @ *
 if(slowena == `TRUE) 
 case(q)
 4'b0000 : q[endmodule
