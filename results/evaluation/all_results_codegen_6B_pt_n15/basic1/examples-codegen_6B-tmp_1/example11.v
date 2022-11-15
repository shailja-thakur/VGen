// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( ) { out = in; }
#### endfunction wire_assign

// Two definitions of a time to model the delay
// First function have a arguments operator (.&(3))
// & marks the num of arguments
// Second function have argument counter(true)
// argument counter to compute the number of arguments passed to the function
#define logic1( factor, time ) ( ( int ) ( factor.value << time ) )
#define logic2ln( factor, time ) ( ( int ) ( factor.value << time ) )

function logic1( a, b ) {
  runtime.ram_control_reg[ 'b' ] = a + b;
}
logic1( a, b );

function logic2ln( a, b, out ) {
  variable v = a + b;
  out = v;
}
logic2ln(endmodule
