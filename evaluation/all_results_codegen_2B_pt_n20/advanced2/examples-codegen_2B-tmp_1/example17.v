// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) delgate
  if (~reset) q = slowena ? 0b11111111010 : 0b00001111111;
  else
    if (slowena)
      if (q < 9)
        q = q + 1;

// synchronize the input clock.
always @(clk) @(posedge clk) depend
  if (slowena)
    slowena ? count_slow.clreset <= 1 : count_slow.slowena <= 1; 
  else
    count_slow.reset <= 1; 

// complete-to-zero # of messages
wire phases ;

always @(clk,slowena)
  fastcode_fast count_slow.ena ;
  fastcode_fast count_slow.width;
  fastcode_fast count_slow.remain;
  fastcode_fast count_slowendmodule
