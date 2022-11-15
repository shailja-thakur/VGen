// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
sc_time on_q = count_slow //neg clock
  (   clk,
     slowena,
     1'b0,
     q[3:0] ? q[0] : _r    
  );

// on the overflow is the 1'b0 signal is changed not to determine whether
// or not q takes the overflow value instead. if slowena is high, the 
// q is changed in cd62 to 9 if q and slowena do not lead to overflow.
sc_time on_ovf = count_slow
  (   clk,
     slowena,
     0'b1,
     q == 0'b1 or q == 0'b9
  );

// on the slow >= the divider
sc_time on_slow = count_slow
  (   clk,
     slowena,
     1'b0,endmodule
