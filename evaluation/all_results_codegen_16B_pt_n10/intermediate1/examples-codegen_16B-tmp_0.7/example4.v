// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 

wire carry, sum, cout, a_hi, b_hi;

// internal logic
wire sum_hi;

assign sum = (sum_hi & carry) | (carry & ~sum_hi);

// set the carry-out bit
assign carry = (~a_hi & b_hi) | (a_hi & ~b_hi);

// set the half-adder output
assign cout = sum_hi | (sum & ~carry);

// Set the high bit of the half-adder sum
assign sum_hi = ~a_hi & b_hi;

// Set the high bit of the half-adder carry-out
assject sum_hi = ~a_hi & b_hi;

endmodule
