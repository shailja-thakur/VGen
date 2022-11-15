// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// The carry and sum are just wires placed here
// to transmit the respective half-add operation.
assign 	sum = a ^ b;
assign 	cout = a&b ;
endmodule
