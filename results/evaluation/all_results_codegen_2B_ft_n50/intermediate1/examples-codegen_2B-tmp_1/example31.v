// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// This is a half subtractor. A Half subtractor subtracts two bits and produces a change and carry-out.
assign sum = a ^ b;
assign cout = a & b;
endmodule
