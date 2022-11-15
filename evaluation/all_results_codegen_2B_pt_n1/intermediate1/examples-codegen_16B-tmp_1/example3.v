// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// a_a_b and a_not_b_cout represent what the output of the full adder would be if a and b were both 1 and if the carryout was 0. Same holds for if -a-b and a_not_b_cout is 0.
// The final output is a_a_b_cout_sum. Sum is the sum of both a and b if the carryin is 0, otherwise 0.
// cout is the carryout of the full adder

assign sum = a ^ b;
assign a_a_b = a & b;
assign a_not_b_cout = a & (~b);
assign a_a_b_cout_0_sum = a_a_b_cout + a_not_b_cout;
assign cout = a_a_b_cout_0endmodule
