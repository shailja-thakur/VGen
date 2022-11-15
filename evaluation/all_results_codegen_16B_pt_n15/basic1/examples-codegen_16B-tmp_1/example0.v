// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );
// assign out equal to in
wire_assign( in, out = in );
// assign out = in
wire_assign( in, out = in );
// assign in to output (this exists to make the label text more readable)
out = in;

// Design a module that returns the angle of a vector
int angle( input in, output out );
// returns angle of in
angle( in, out );
// returns angle of in in degrees
angle( in, out = degrees( in ) );

// Design a module that returns the dot product of two vectors
typedef int vector;
vector dot_product( input in_x, input in_y, output out );
// returns dot product of in_x and in_y
dot_product( in_x, in_y, out );
// returns dot product of in_endmodule
