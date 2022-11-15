// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire [2:0] c;

assign {c[2], c[1], c[0]} = a + b + c[0] + c[1] + c[2] + c[3] + c[4] + c[5] + c[6] + c[7];
assign cout = (c[2] ^ c[3]) ? ~(c[3] ^ c[4]) : (c[4] ^ c[5]);

endmodule
