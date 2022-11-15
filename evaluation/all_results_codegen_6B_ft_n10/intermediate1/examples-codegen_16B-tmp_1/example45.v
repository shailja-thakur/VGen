// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Broadcat adder function
//concatenate a & b to make x 
assign x = {a, b};

// if a=1'b0 or b=1'b0 produces carry-in of 0 (0 + 1) 
// or 1 (1 + 1) which is the same as a proper adder. 
// if a=1'b1 and b=1'b1 (only one of them can be 1 at a time), produces carry-in 1 (1 + 1)
assign carry_in = a ^ b;

assign sum = x[0] ^ x[1]; //assign sum from each individual bit operation 
assign cout = x[1] & x[2]; //assign carry-or of x[2]

endmodule
