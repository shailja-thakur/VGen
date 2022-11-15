// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
assign a1 = a;
assign b1 = b; 
assign sum1 = a1^b1;
assign cout1 = a1&b1;
endmodule
