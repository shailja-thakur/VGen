// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// For symmetrical 0-in, 1-out functions, just use "xor($a, $b) ; $cout = $a" 
// Negative output values = (( $a & $b ) + ($a&~$b) + (~$a&~$b) ) >> 2
// When thinking of why that formula works, it's based on some observation:
// ( $a & $b ) = ( AB )( $a & $b ) + ( AB )( $a & ~$b ) + ( AN )( $a & ~$b )
// Notice how $a & $b is the same as (AB>>1), which is (AB>>1) + (AB>>1) = (AB>>2)
// and then $a & ~$b is just AB + AN = ~( AB ) + AN = ~BC + C0 = ~($bc) +endmodule
