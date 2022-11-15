// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire w1, w2;
assign w1=a&amp;b;
assign w2=a^b;
assign cout=w1^w2;
assign sum=w2;
endmodule
