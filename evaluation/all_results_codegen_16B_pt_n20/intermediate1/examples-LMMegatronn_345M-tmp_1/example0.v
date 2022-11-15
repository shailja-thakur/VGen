// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire xorin1, xorin2;
xor XOR1(xorin1, a, b);
xor XOR2(xorin2, a, xorin1);

assign cout = xorin1 ^ xorin2;

endmodule
