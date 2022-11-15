// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// assign in to out
// assign out to in

// functions
function wire_assign( input in, output out ) {
  out = in;
}

// module
import "wire_assign";
// modules
import "wire_assign";
// functions
function fake_in( in ) {
  out = in;
}

// module
import "wire_assign";
// modules
import "wire_assign";
// functions
function fake_out( out ) {
  in = out;
}

// module
import "wire_assign";
// modules
import "wire_assign";
// functions
function fake_inout( in, out ) {
  out = in;
}

// module
import "wire_assign";
// modules
import "wire_assign";
// functions
function fake_outendmodule
