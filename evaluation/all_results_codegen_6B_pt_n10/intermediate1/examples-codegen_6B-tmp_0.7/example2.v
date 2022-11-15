// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

net half_adder_net = {
	.half_adder = half_adder,
	.inputs = 2,
	.outputs = 2
};

function half_adder( 
input a, b,
output cout, sum ) {
	sum = a + b + sum;
	cout = sum;
}
endmodule
