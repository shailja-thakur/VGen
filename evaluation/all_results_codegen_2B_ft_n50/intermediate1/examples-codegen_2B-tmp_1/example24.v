// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 
	halfadder M1	(a,b,q,t); 
	assign 	cout = t[0]; 
	assign	sum = q + t[1]; 
endmodule
