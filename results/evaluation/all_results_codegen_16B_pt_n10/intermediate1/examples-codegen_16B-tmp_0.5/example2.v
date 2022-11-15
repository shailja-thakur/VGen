// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void main(){
	half_adder a( 0, 1, cout, sum );
	half_adder b( 0, 1, cout, sum );

	a.eval();
	b.eval();
	
	a.eval();
	b.eval();

	while( true ){
		a.eval();
		b.eval();
	}
}
endmodule
