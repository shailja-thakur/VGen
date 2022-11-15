// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a, b, cout, sum;

// The sum is output to the sum register and the carry-out is output to the carry-out register
assign sum = {a, b};
assign cout = sum;

endmodule
