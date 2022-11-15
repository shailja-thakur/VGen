// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
 wire x,y,z;
 not( x,a );
 not( y,b );
 and( z, x,y );
 and( sum,a,b );
 and( cout, x,y );
 endmodule 
 
 module half_adder_alt(a,b,sum,cout);
	input a;
	input b;
	output sum;
	output cout;
	assign sum=a^b;
	assign cout=a&b;
endmodule
