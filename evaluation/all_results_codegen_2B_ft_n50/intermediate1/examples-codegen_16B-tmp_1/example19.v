// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Sum is a carry-out (cout) and is a function of both a and b
assign sum = a ^ b; // Ex-oring

// Carry-out is the value devided by 2. Therefore a carry-in on
// (a or b) results in a carry-out on (cout).
assign cout = a & b;

endmodule
