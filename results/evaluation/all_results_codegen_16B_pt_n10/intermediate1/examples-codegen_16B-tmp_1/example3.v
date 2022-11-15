// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

struct half_adder_proto {
	unsigned char vars_[2];
};

void half_adder_encode( half_adder_proto*, unsigned* /*i*/, input a );

void half_adder_rewrite( half_adder_proto* );

void half_adder_encode_elems( half_adder_proto*, unsigned /*i*/, input a );

void half_adder_init( half_adder_proto );

void half_adder_decode( half_adder_proto*, unsigned* i, input a, output cout );

void half_adder_call( half_adder_proto* );

void half_adder_renum( half_adder_proto* p, input a, output cout );

void half_adder_encode_keys( half_adder_proto*, unsigned /*endmodule
