// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
function _apply( in )
{
	out = in;
};
// Provide an appropriate apply function for named input ports
module wire_template( input in, output out )
{
	// body
	wire( input ); io( io );
	_apply( in := out );
};
// The portion of the code below is copy from rt to mtb module.
#include <iostream>
using namespace std;

output map( map<string, input> in ) { throw; }
void map_elts( map<input, cn<input> > elems ) { }
// A user defined map (strange, no?)
template<map<input,cn< input /> > T>
void mapfunc1( map<input,cn<input>> elems ) { }
// Map a map down and change elems to a map
template< map< inputendmodule
