// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out, carry_out;

// This is the logic of the half adder.
assign {
    sum_out = a_in + b_in + carry_out;
    carry_out = (a_in + b_in) >> 1;
}

// This is the interface to the half adder.
assign cout = sum_out;

endmodule
