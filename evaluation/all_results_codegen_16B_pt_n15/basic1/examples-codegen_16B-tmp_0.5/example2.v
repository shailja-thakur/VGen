// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign.assign = function( in, out ) {
  out.value = in.value;
}

// Design a module that adds the input to the output
module wire_add( input in, output out );
// add in to out
wire_add.assign = function( in, out ) {
  out.value = in.value + out.value;
}

// Design a module that multiplies the input by the output
module wire_multiply( input in, output out );
// multiply in by out
wire_multiply.assign = function( in, out ) {
  out.value = in.value * out.value;
}

// Design a module that divides the input by the output
module wire_divide( input in, output out );
// divide in by out
wire_divide.assign = function( inendmodule
