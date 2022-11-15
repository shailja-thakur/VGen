// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire carry_out ;

Bit carry[2];

reg sum;

digital logic overflow( overflow_state);
 
assign { overflow, sum < [2:0] } = carry_out;

// Add A and B.
assign sum = ( ( a << 1) + b + carry[1]),
carry[0] =  (a >> 7);    // Don't forget that a<<1 must be a 15-bit number so we must shift one right before shifting left one.
carry_out = (a >> 6);

endmodule
