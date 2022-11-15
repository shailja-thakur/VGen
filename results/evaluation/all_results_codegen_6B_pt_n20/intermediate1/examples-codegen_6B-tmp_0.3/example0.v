// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The half adder is a single bit adder.
#define half_adder( a, b, cout, sum ) \
  half_adder( a, b, cout, sum, a, b )

// The half adder is a single bit subtractor.
#define half_subtractor( a, b, cout, sum ) \
  half_adder( a, b, cout, sum, a, b )

// The half adder is a single bit subtractor.
#define half_subtractor( a, b, cout, sum ) \
  half_adder( a, b, cout, sum, a, b )

// The half adder is a single bit subtractor.
#define half_subtractor( a, b, cout, sum ) \
  half_adder( a, b, cout, sum, a, b )

endmodule
