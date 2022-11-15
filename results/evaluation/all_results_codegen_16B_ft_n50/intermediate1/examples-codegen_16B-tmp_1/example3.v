// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// define output as output type and connect to register
reg cout;
reg sum_bit;

reg a_already; // not needed if operation stored in a reg

// sum
always @ ( * )
begin
	// default case: don't originally implement adder functionality here.
	//a_already = 1'b0;
	sum_bit = 1'b0;
	cout = 1'b0;
	
	// detect if a is a positive or negative number
	if (a[15] == 1'b1)
	begin 
	//check for carry
	sum_bit = ~a[15]; // add 1 (negative)
	cout = 1'b1;
	// if b is negative it should carry
	}} 
	// b is positive then it should not carry
	
	
	
	
end
end
endmodule
