// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This asserts if a and b are not both 1 or 0
assign assert_in[0] = (~(a & b)) & a; 
assign assert_in[1] = (~(a & b)) & b;

xor first_xor( result[0], assert_in[0], b );
xor second_xor( result[1], assert_in[1], a );

xor final_xor( sum, result[0], result[1]);
assign cout = result[1];

endmodule
