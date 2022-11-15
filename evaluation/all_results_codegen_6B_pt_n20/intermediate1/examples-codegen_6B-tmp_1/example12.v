// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );


combine(
carry_out( parent.sum[0].a (i/2, i%2), b[i/2], i/2 ),
carry_out( c0, sum[0], i/2 ) ,
carry_out( cout, sum[1], i/2 ),
carry_out( c1, sum[1], i/2 ) );
*/
    
    package myhadderexample;

    import modint.*;
    
    class halfadder {
    /*
    require( modint::inint(8), "bld_inint: modint::8");

    private R_0^ sum = { R_0 == 0, KeyOwner("bld"), R_0 == (R_0^)0, KeyOwner("add")};
    private R_1^ cin = { KeyOwner("bld"), sum[endmodule
