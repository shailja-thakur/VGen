// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [1:0] g, p;

assign {cout, sum} = a + b + cin;
assign cout = g[1] | (p[0] & a & b) | (p[0] & a & b);

endmodule
