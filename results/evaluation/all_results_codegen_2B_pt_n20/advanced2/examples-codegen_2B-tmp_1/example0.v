// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Every time a cold-plug turns ena high or cold-plug turns ena low which is only possible on a positive clock edge
// which remaps as follows:
//   slow == false && ¬q > 9, same bit 11:1 -> queued 100, executed 100
//   slow == false && q > 9, same bit 11:0 -> queued 1110, executed 1110
//   slow == true && ¬q > 9, same bit 11:1 -> queued 100, executed 100
//   slow == true && q > 9, same bit 11:0 -> queued 1100, executed 1100

always @(posedge clk)
{
    if (slowena && !reset)
    {
        q[3:0] = (q[3:0] + 1) & 0b1111;
    }
}
);

endmodule
