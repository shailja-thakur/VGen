// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

DEF_HALF_ADDER_BODY( half_adder_add, a, b );

// Creates a 64 bit result of an add.
inline
result add( a:c_int64 bit0, b:c_int64 bit1, c_int64 bit2, c_int64 bit3 ):
result = add_mod_32( add_mod_32( bit0, bit1 ), add_mod_32( bit2, bit3 ) );

// Rule: result is no smaller than either a or b
#define RULE_RESULT_SMALLER_THAN( bit0, bit1, bit2, bit3 ) \
  ( bit_is_zero( %c_int64.range( 0, 32 ), bit0 ) || \
    ( bit_is_zero( %c_int64.range( 32, 64 ), bitendmodule
