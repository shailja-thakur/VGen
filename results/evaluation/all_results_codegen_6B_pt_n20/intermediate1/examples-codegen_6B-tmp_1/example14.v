// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );


require_hw_abstraction("half_adder");




/* dleaf over-clocked clock timing */
.ports    (
 cin, cout, stb, sum, carry )            & input_port_req()
          ("carry", 2),
.need_dleaf_v1(true)
.post_synchronize()
.encode_params( arbiter<dleaf>() ) {
 <> rec(cin, carry) : divider<>(),
        ain   : a,
        bout  : (carry b + carry b);
}
.synchronise_before_command()
.assign(sum, dstin arg << (p._value, 8 + (carry.tff << 8), carry.tff));
.flow( cout, sum, arbin, carry );
dleaf dy;

< daisy.inputendmodule
