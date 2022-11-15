// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Full adder is a 4-bit adder with carry in.
assign sum = a ^ b;
assign cout = (a & b) | (a & b_cout) | (a_cout & b);

endmodule
