// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The full adder adds to three bits.
// The carry-out is made from the two least-significant bits.
module full_adder( 
input a, b,
input cout, sum, 
output carry );

// The converter produces a single byte.
module converter ( 
input q,
output byte_out );


module top (1);

top(
RNDM => RNDM )
    full_adder ( QA ~ U_P( V_P DB in AC in DB ).bus )
    non_w_r{1, 0};
top -> full_adder[1];

.finish
.precision_keep32
.endn
''' )

            hanp = pkind_pref_name(
                    pkind.name,
                    {
                        'RNDM':
                            'bit unsigned rotate-modendmodule
