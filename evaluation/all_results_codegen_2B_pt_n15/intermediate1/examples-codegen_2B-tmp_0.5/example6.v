// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a carry-out.
module carry_out( 
input a,
output cout, sum );

// This is a half subtractor. A half subtractor subtracts two bits and produces a sum and carry-in.
module half_sub( 
input a, b,
output cout, sum );

// This is a half bit-wise AND. A half bit-wise AND is a bit-wise logical AND.
module half_and( 
input a, b,
output cout, sum );

// This is a half bit-wise OR. A half bit-wise OR is a bit-wise logical OR.
module half_or( 
input a, b,
output cout, sum );

// This is a half bit-wise XOR. A half bit-wise XOR is a bit-wise logical XOR.
module half_xor( endmodule
