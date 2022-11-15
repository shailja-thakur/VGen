// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

wire x[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
reg [3:0] q;

always @(posedge clk)
    if (slowena)
    {
      if (q == count_slow.cid && reset == 1)
      {
        q[count_slow.ididx] = 0;
      }
      else if (q != 9 && reset == 0)
      {
        q[count_slow.ididx] = q[count_slow.ididx] + 1;
      }
    }
endmodule
