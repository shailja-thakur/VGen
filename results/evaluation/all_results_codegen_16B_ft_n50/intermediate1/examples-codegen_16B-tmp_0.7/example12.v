// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

	// internal signal declarations
	reg sum, cout;
	
	always @ ( a or b ) begin
	
	// sum will be 1 if the inputs are both 1
	// zero (or not true) if the inputs are both zero
	// cout is zero if no carry takes place
	// otherwise, cout is 1
	
	// this is just a description of the state space diagram
	// sum is sum if b=1, otherwise is zero
	// cout is 1 is a and b are not equal
	
	sum = (~a & b) | (a & ~b);
	cout = (a & b);
	end
endmodule
