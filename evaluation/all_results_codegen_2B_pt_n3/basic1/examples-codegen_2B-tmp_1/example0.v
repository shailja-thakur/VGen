// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign(wire &in, wire out) {
  out = in;
}

// use a function call to emit a wire id to a module of a function
function wire_out( in, out ) {
  out( in );
}

// The Output function for the Wire out module

function wire_out(in, out) {
  out(in);
}

//  Use a function call and an Id to emit a call to a function call
function wire_out_id(in, out) {
  // Get the Id we would like to emit from a function call
  let id = in;
  // Set it logically for the function_call we would like to emit to

  out(function_call(id ));
}

// mapping a counter
function counting_module( input in, output out )   {
  out.repeat( insignendmodule
