// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
input in;
reg tmp;
wire carry;
input [cube(3) / 2] sum;
module half_adder(
input a, b,
output cout, sum );
input in;
reg tmp;
wire carry;
input [cube(3) / 2] sum;
output half_adder(
input a, b,
output half_adder, sum );
input in;
reg tmp;
wire carry;

reg [cube(3) / 2] sum;
wire cout;
wire sum;
assign {
	sum = 0;
	cout = 0;
} sum #sum;
	always_ff( {
		tmp = $width - 1;
	} );
	// 2'b0 : sum[1:0]
	// 2'b1 : sum[3:2]
	// 2'b0 ; other 3endmodule
