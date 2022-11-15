// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign::wire_assign( input in, output out ) : in_(in), out_(out) { }
// create a wire_assign object from two input ports
wire_assign::wire_assign( input ina, input inb, output out ) : in_ (ina), out_(out) {
	connect( inb, out_ );
}

// print out the value of the wire
void wire_assign::operator()( const tuple_cell& tup ) {
	out_ = tup.cells()[0];
}

// test
int main( int argc, char** argv ) {
	// wire to assign
	wire_assign w( s_in, s_out );
	
	// assign the output of the wire
	wire_assign w2( s_in2, s_out );
	endmodule
