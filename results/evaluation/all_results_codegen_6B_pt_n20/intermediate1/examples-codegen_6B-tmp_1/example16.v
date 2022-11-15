// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
VARIABLE clk, reset;

( clk, reset ) in 0, 1;
( cout, sum ) out 0; 

always @(posedge clk, negedge reset)
  if (reset)
    sum <= 0;
  else
    sum <= a ^ b;

endmodule
