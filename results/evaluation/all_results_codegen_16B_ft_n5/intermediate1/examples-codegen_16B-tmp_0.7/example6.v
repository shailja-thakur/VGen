// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// internal signals
reg sum, cout;

always @ (a, b, sum, cout)
begin
	// sum is the sum of two bits added, cout is the carry-out bit
	// when b = 0 then sum = a, and cout = 0
	// when b = 1 then sum = a+b, and cout = 0
	sum = a ^ b;	
	cout = (a & b);
end
endmodule
