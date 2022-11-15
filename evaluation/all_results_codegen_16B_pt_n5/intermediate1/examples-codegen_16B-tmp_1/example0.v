// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void half_adder( input a, b, output cout, sum ) {
	
	@*$.1 = b[0]; // Instead of using bit_input( b );
	
	@*$.2 = {~0, ~0, a[0], add_inv, a [1], bit_add, {(!a[2]), b[1], b[2]}}; // {a[2] + b[1] + b[2], b[0], b[1], b[2]};
	@*$.3 = inserter!3( $*$.2 );

	bit_add( {!a[3], b[2]}, $*$.3 );
	
	@*$.1 = a[2];
	bit_output( $*$.3 );
}

// Similar to half adder, we need a multiplication circuit thatendmodule
