// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full overflown operator. It takes two inputs and the output is either true or false.
module full_overflown( 
input a ,b,
output cout);

//The following expression represents the data of the molecule that we have generated previously.
module final_value( 
final_molecule input );

//Given a fp input number and a rounding mode, determine the nearest integer approximation of the input number.
module negate_remainder( 
input n,
input fp, 
output i, 
output p );

//Short description:
// This is the modulus operator.
module mod( 
input a ,
input b );

//The following remnant output is not yet implemented in this simulation of 1-PLR. I did not know how the output parameter worked.
module rtn_plus_one( 
input a ,endmodule
