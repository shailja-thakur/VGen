// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

functional addr( integer );

always @(posedge clk)
r <= sum + addr( mul( a, clk_mod ) );

always @(posedge clk)
b <= a + addr( mul( b, clk_mod ) );

endmodule
