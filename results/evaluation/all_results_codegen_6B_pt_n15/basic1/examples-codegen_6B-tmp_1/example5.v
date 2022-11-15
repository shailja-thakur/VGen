// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

function display(){
  int i;
  for( i = 0; i < 8; i++ )
    out = display_wire( i );
}
// do whatever it takes to ensure that out is the desired value

function display_wire( n ){
  if ( n == 0 )  return in;
  if ( n == 7 )  return out;
  else  return wire_and( wire_assign( in, wire_xor( out, in ) ),
   wire_shift_left( out, 1 ) );
}

// Here is the test program: undo any changes you made above
wire before = 0xfffffff7;
#define N 8
wire wires[N] = {0x1, 0x2, 0x4, 0x8, 0x10, 0x20, 0x40, 0x80};
wire in = 0endmodule
