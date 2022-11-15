// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

wire f;

assign s = f;

always @ (clk, rst)
{
  wait(slowena, s & 3, 1); // shifts the register
  wait(slowena, s >> 3 & 1, 1);
  
  f <<= 1;
  f &= 1;
}

endmodule
