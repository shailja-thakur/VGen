// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign( input in, output out, int width ) {
  for (int i = 0; i < width; i++) {
    out[i] = in[i];
  }
}

//------------------------------------------------------------------------------
// design a module that adds the inputs
module wire_add( input in0, input in1, output out ) {
  out[0] = in0 + in1;
}

//------------------------------------------------------------------------------
// design a module that adds the inputs
module wire_add( input in0, input in1, input in2, output out ) {
  out[0] = in0 + in1 + in2;
}

//------------------------------------------------------------------------------
// design a module that adds the inputs
module wire_add( input in0, input in1, input in2, input in3, output out ) {
  out[0] = in0 + inendmodule
