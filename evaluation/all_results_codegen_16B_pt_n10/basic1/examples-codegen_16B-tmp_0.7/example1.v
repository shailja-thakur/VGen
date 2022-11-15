// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );
// design a module that sets the output to one if the input is odd and zero
// otherwise
module odd_or_zero( input in, output out );
// assign out to in if in is odd
odd_or_zero( in, out );
// assign out to one if in is odd and zero otherwise
wire_assign( in, out );
// assign out to one if in is odd and zero otherwise
wire_assign( in, out );


int main() {
  input in;
  output out;
  in = 1;
  out = 0;
  odd_or_zero( in, out );
  cout << out << endl;

  in = 2;
  out = 0;
  odd_or_zero( in, out );
  cout << out << endl;

  in = 3endmodule
