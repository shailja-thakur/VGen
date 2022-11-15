// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Initialize
sum.Time = sum.Time|0<<18;
sum.C = 0;
sum.S = 0;

// Destination state
sum.V = sum.C;

// The bundles carry as a sum container operations
sum.sum = Reinterpret_cast_complex64< double >( b&1|a&2  );
sum.sum <<= 1;
sum.C <<= 1;
sum.C |=(b&2?1:0)|(a&2?1:0);
sum.carry <<= 1;

while ( sum.S ) {
// for ( int i=8; i>=0; i-- ) {
	if ( sum.sum  >= sum.V ) {// sumpath
		sum.V <<= 1;
		sum.sum <<= 1;
 		sum.carry <<endmodule
