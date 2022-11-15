// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [2:0] c;

xor x3(a, b, c[0], sum[0]);
xor x2(c[0], b, c[1], sum[1]);
xor x1(sum[0], a, b, c[2], sum[2]);

endmodule
