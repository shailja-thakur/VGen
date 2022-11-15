// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// assignments always go in ascending order so putting in(0) first
// prints out(0)
// observe it has another output out_1 that increments (fast on Moore's)
// var c1 out_1 = in(1);
// var c2 out_2 = in();

// Preamble to declare doit
struct 
net_function { 
	signed int out_pointer;
        signed int in_pointer;
        void * info;
        int GUARD;
	void _execute( soNode * parent, soInfo * info );
};
{};

#include "include/nnet_simple_assign.h"

void nnet_simple_assign::output( void ) {
	// XXX take into account SO networks existence

	// do multiple assignments recursively from depth to depth
	
	// Assignment
	out -> eachOutputRegisterendmodule
