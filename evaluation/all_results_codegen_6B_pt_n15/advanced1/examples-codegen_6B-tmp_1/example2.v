// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low

  signed_adder 
  ( 16d'(-1:0), 16-0 >= b, &(s[7:0] = 0b01111111111111011), // if ( a[7:0] <= b[7:0] ) condition_1 executed if a[7:0] <= b[7:0] using lowest bit of a[7:0] and highest bit of b[7:0] as input into the next condition 
    16d'(16d'`assign|(a[7:0]>=b[7:0]?1:0)^15), c>=0, here set bit 15 to c
  );
`

func Example() {
	fmt.Println(func() { f(11, -17) }())
	fmt.Println(func() { f(92, -17) }())endmodule
