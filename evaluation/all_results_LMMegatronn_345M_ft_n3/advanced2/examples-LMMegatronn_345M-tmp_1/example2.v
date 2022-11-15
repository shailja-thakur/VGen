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
// The clock acknowledged:
//  1. reset is low
//  2. reset is high
//  3. enable when d isazable
// 4. enable when clk is low
// 5. enable when clk is high
// 6. enable when clk is low
// 7. enable when clk is low
// E.gthstatus wasn't using count because it is guaranteed to
// count down to 40.
//
// 2008-06-17	-	-	833 setup and hold checks.
// 2008-07-17	- timer moved to this file, the real module can handle any more close
//				 predicated simulation time violation.
// 2008-08-18	- timer changed to reflect state machine and parameters are updated
// 2008-08-15	- timer value because it's reset was in between more than 8 timer.
// 2008-10-endmodule
