// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
initial begin 
  q = 1;
  $display("counter example");
  $display_wait(clk, reset);
  q = (reset == 0);
  q = (q == 2);
  q = (q == 3);
  q = (q == 4);
  q = (q == 5);
  q = (q == 6);
  q = (q == 7);
  q = (q == 8);
  q = (q == 9);
  q = (q == 10);
  q = (q == 11);
  q = (q == 12);
  $display(q);
end

// This is a counter that counts from 1 to 12
module counter2( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clockendmodule
