// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @(posedge clk)
  cout <= sum + a + b;

always @(posedge clk)
  sum <= a + b + ~cout;
`

func HalfAdder(inputA uint, inputB uint) uint {
	var sum uint
	var carry uint
	for i := 0; i < 32; i++ {
		sum = (sum + uint(inputA)) & 0xFFFFFFFF
		sum = (sum + uint(inputB)) & 0xFFFFFFFF
		carry = (sum >> 32) & 1
	}
	return uint(sum) + uint(carry)
}
endmodule
