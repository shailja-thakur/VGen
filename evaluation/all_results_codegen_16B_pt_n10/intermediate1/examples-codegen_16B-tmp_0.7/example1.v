// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

half_adder( a=0, b=0, cout=0, sum=0 ) {
	if ( a==0 && b==0 ) {
		cout=0;
	} else if ( a==0 && b==1 ) {
		cout=a;
		sum=a;
	} else if ( a==1 && b==0 ) {
		cout=b;
		sum=a+b;
	} else if ( a==1 && b==1 ) {
		sum=a+b;
		cout=sum>1 ? 1 : 0;
		sum=sum>0 ? sum-1 : sum;
	} else {
		cout=b;
		sum=a+b;
	}
}endmodule
