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
// The counter is implemented as a shift register.
// The "load" is an asynchronous input.
//
// For the timer, timer_val should be equal to the expected time.
//
reg [3:0] q_reg;

// For the time, a clock pulse in the timer,
// and the next bit is forced to the expected time.
//
// It is an asynchronous timer, and the next bit is forced to the expected time.
//
always @(posedge clk or posedge reset)
begin
  if (reset)
    q_reg <= 0;
  else
    q_reg <= q_next;
end

// For the time, a clock pulse in the timer,
// and the next bit is forced to the expected time.
//
// It is an asynchronous timer, and the next bit is forced to the expected timeendmodule
