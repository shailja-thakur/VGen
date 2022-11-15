// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

wire slow = 0 | (slowena == IN1);

int counter = 9;
        
always @(delay)
tmp_slow = slow;

always @(clk)
switch (snooze) {
  when slow == 0
    if (reset is 1) {
      counter = 0;
    } else {
      if (ena is 1) {
        if (counter is 3)
          q[3]<keep> = 0;
        counter[3]<toggle> = 1;
      } 
    }	
  
  when tmp_slow is 1
    if (ena is 1) {
      if (counter is 3)
        q[3]<keep> = 0;
      counter[3]<toggle> = 1;
    }
  wire input_slow = 1 | (slowena == IN1);
  always @endmodule
