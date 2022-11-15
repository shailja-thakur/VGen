// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
var buf = []byte( "eighter me.  " );
buf[0] = uint64( ( in << 1 ) ) | 0x01;
print( buf.toString() );
buf = []byte( "eighter me.  " );
buf[0] = uint64( ( in << 1 ) | 1 ) & 0xff;
print( buf.toString() );
module_main();
endmodule
