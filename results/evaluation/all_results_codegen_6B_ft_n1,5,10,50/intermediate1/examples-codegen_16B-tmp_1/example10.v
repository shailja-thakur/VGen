// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg ca, cb, sb, rsum, rca;

always @ ( sum, a, b, carryOUT )
	begin
	
	
	// This is the addition formula
	rsum = a ^ b;
	rca = rsum & a;	
	sb = b ^ rca;
	cb = sb & cin;
	
	// This is the bitwise trait which is or operation
	sum = rsum | cin;
	carryOUT = cb | cout;
	
	
	end
endmodule
