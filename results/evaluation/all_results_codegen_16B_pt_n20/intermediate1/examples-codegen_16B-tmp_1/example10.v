// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout;
output sum;

always @ (posedge clk) begin
	sum <= a + b;
	if ((a==1) && (b==1)) 
		cout <= 1;
	else 
		cout <= 0;
end
endmodule
