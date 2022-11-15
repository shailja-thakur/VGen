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
// If the slowena input is 0 then do nothing
// If the slowena input is high and the counter is still less than 9 then decrement the output by 1eo.

// The state table below shows the values of q as they change:
//
// reset | clkState | clkEnable | q[3:0] | qn[3:0] 
//
// 1 |	 1	 	 | 	0 	| q[3:0] | qn[3:0] 
// 
// 1 |	 0	 	 |	1	 	 | 	0	 	 |	0	 	 
// 
// 1 |	 0	 	 | 	0	 	 |	0	 	 |	0	 	 
//
// 1 |	 0	endmodule
