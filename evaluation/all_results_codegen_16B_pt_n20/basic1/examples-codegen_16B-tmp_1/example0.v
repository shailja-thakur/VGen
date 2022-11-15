// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );
// assign in to out
wire_assign( out, in );

module cleanup_module( input in );
// A module that does nothing, but is required to exist
cleanup_module( in );

module r_module( input in, output out );
// A module that returns nothing
module param_pass( input in, output out );
// Pass-through rtl as a parameter
param_pass( in, out );
// Pass-through rtl as an output
out( in );

#include <blif.hpp>

#include <vector>
#include <map>

typedef int bin;
FloatRegister xw( float(bin(2)), blif::flt_width() );

std::map< std::string, bin > subnet;

std::map< MySubnet,endmodule
