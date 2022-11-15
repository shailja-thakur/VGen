// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
void assign( const input in, output out );
// assign out to in
// in alias to in
void alias( input in, output out );

// Wire house
wire_assign wires;
// Wire houses
wires.assign( input a, output b );
wires.assign( input a, output b, input c, output d );
// Wire house for multiple inputs and outputs
void assign( input in1, output out1, input in2, output out2 );
// Wire house for multiple inputs and outputs
void assign( input in1, output out1, input in2, output out2, input in3, output out3 );
// Wire house for multiple inputs and outputs
void assign( input in1, output out1, input in2, output out2, input in3, output out3, input in4, output out4 );

// Wire house for multiple inputs andendmodule
