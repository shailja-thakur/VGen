// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// Design a module that sums the values in a range
module sum( input range, input start, input end, output sum )
{
  if ( range.out_port == start.out_port ) {
    for ( int i = start.in_port; i <= end.in_port; i += 1 ) {
      sum.out_port = sum.out_port + range.in_port[i];
    }
  }
}

// sum the values of the range between the inputs start and end

// Design a module that outputs the sum of the values of the range between start and end
module output_sum( input range, input start, input end, output sum )
{
  if ( range.out_port == start.out_port ) {
    for ( int i = start.in_port; i <= end.in_port; i += 1 )endmodule
