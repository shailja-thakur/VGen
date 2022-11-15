// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire c11, c22;
half_adder HA1( .a(a), .b(b), .sum(sum), .cout(c11) );
half_adder HA2( .a(c11), .b(0), .sum(sum), .cout(c22) );

assign cout = sllb ? c22 : c11;

endmodule
