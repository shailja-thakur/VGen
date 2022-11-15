// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
  input [7:0] a, b;
  output sum;

  always @(posedge clk)
    if (rst)
      sum <= 0;
  
  always @(posedge clk)
 if (rst == 0 and passed <= 0) {
      sum <= 0;
}
rst <= 1;

half_adder_encoding:
	sum <= a xor cout;
	if (cout == b) {
	      sum <= a;
      }
    passed <= 1;


blocking :
   blocking_half_adder :
	if (sum.n == a or sum.n == a) {
	    jumping -> a.n = 1;
	    sum <= a;
	    v <= sum;
	}
	if (passed.n == 0) {
		sum <= zero;endmodule
