// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Note: This system runs much faster if CSEIZE is enabled.
always @(posedge clk,
       slowena & reset)
  count.write(slowena ? ((--q) < 9) : q.read());

// On the negative edge of the clock:
// if the ena input is high, increment the output q9.
always @(clk,reset)
  count.write(slowena);				   //Call when slowena is high!

endmodule
