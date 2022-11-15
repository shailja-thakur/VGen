// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [2:0] g, p;

assign {cout, sum} = a + b + cin;
assign cout = g[0] | (p[0] & b[0]);

endmodule
