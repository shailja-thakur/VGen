// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 

// First stage of the full adder 
// uses only input a 
assign sum = a ^ b; 

// Second stage of the full adder
// uses input a or b 
assign cout = (a & b) | (a & ~b); 

endmodule
