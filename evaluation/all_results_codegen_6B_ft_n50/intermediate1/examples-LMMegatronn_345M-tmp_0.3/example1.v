// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [1:0] c;

assign {c[0], c[1]} = a + b + c[0];
assign cout = (c[0] == 0) ? c[0] : 0;

endmodule
