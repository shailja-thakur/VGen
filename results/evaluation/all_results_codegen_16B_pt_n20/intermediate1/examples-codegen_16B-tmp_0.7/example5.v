// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input [2:0] a, b;
output sum;

always @(posedge clk) begin
	if (a == 1 && b == 1) begin
		sum <= 1;
	end else if (a == 1 && b == 0) begin
		sum <= a;
	end else if (a == 0 && b == 1) begin
		sum <= b;
	end else begin
		sum <= a + b;
	end
end

endmodule
