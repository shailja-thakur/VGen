// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire carry_in, carry_out, sum_in;

// This is the logic of the half adder.
assign cout = ( sum_in | carry_out ) & ~( carry_in | sum_in );

// This is the logic of the carry in.
assign carry_in = ( a | b ) & ~( a & b );

// This is the logic of the sum in.
assign sum_in = ( a & b ) | ~( a & ~b );

endmodule
