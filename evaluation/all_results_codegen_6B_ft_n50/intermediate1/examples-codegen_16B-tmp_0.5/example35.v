// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
reg cout, sum;
always @ (a or b)
begin
	sum = a ^ b;
	cout = a & b;
end
endmodule
