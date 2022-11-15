// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input clk, wsg_clk, wd_en, wd_clk, reset;
input [9:0] bit_x, bit_y;
output [7:0] C_out;

always @( posedge wd_clk )
  if (wrd_en > 0)   // if |wd_en|
    if (wd_clk)     // if wd_clk
      sum += (cout << 1);

always @( posedge clk )
  if (wr_en == 1)
    sum += bit_y;

always @( posedge wd_clk )
  if (wrd_en > 0)   // if |wd_en|
    sum += bit_x;

endmodule
