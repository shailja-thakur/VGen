// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

initial begin
	sum = 0;
	cout = 0;
end

always @(posedge clk)
	if (a)
		sum = sum + 1;
	if (b)
		sum = sum + 1;
	cout = sum;
end

endmodule
