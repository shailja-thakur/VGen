// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_out_to_in( input in, output out ) {
  out = in;
}
// clang-format on

int main() {
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;
  int f = 0;
  int g = 0;
  int h = 0;

  wire_assign( a, b );
  wire_assign( b, c );
  wire_assign( c, d );
  wire_assign( d, e );
  wire_assign( e, f );
  wire_assign( f, g );
  wire_assign( g, h );
  wire_assign( h, a );

  int i = 0;
  int j = 0;
  endmodule
