// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); // Two bits inputs sum and carry-in are one bit each.
assign sum = a ^ b; //Ex-oring of two bits.
assign cout = a & b; //The bitwise AND of two bit result.
endmodule
