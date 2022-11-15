// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module assign( out out, in in);

// module simple_assign( in in, out out ) {
//   outs( out, in );
// }

function simple_assign( in in, out out ) {
  out = in;
}

// module dut( input in, output out ) {
//   simple_assign( in, out );
// }

function dut( in in, out out ) {
  simple_assign( in, out );
}

// module top( input in, output out ) {
//   dut( in, out );
// }

function top( in in, out out ) {
  dut( in, out );
}

module top_module = top( input in, output out );

// function top_f( input in ) {
//   dut( in, outendmodule
