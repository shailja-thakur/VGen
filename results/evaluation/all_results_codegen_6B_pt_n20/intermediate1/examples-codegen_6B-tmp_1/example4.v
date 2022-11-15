// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder( a, b, cout, sum ){
	// Euclidean Number System module contains 2º bit -> 1.Bit multiplication 
	// whereas Turbo module employs multi-word multiplication which utilizes
	//  bits per word multiplier.
	if( get( a ) > get( b ) ){
		set(b, (a << 1) + 1);
		set( a, get( b ) - 1 );
	}
	else{
		set( a, (b << 1) + 1);
		set( b, get( a ) - 1 );
	}
	set( sum, get( a ) + get( b ) );
	assert( get(sum) <= 9 );
	assert( get(sum) >= 0 );
	cout = get(sum);
	// 8¹² + 7´ + 0 = (ABC + Cendmodule
