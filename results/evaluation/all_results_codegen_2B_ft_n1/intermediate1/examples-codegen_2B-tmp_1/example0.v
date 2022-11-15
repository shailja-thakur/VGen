// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

assign sum = a ^ b; // always a XOR b (logic for sum).
assign cout = a&b; // logic to look at the endpoint products.
endmodule
