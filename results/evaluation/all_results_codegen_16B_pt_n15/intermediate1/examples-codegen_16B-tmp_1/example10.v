// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout;
output sum;

always
begin
	if (a != 0) 
	{ 
		sum = (a + b) % 2; 
	} 
	
	if (b != 0) 
	{ 
		cout = 1; 
	} 
	else 
	{ 
		cout = 0; 
	} 
	
end
);

half_adder_has_m = half_adder(  a_m,  b_m,  c_m );

half_adder_has_n = half_adder(  a_n,  b_n,  c_n );


endmodule
