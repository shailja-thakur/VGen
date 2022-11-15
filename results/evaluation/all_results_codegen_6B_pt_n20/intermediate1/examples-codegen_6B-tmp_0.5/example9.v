// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

//#define add( a, b ) a = a + b + carry_out
#define add( a, b ) a = a + b

//#define mult( a, b ) a = a * b
#define mult( a, b ) a = a * b + carry_out

//#define add_carry_out( a ) a += carry_out
#define add_carry_out( a ) a = a + 1

#define carry_out (1)

//#define sum( a ) a
#define sum( a ) a

//#define carry_out (0)
#define carry_out (0)

//#define sum( a ) a
#define sum( a ) a

//#define carry_out (0)
#define carry_out (0)

//#define sum( a ) a
#endmodule
