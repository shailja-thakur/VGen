// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

wire wire_assign( input in, output out, int i )
{
   out.write( i );
};

wire wire_assign( input in, output out, int i1, int i2 )
{
   out.write( i1 );
   out.write( i2 );
};

endmodule
