// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
void assign(input in, output out) {
  out = in;
}

// Design a module that prints the contents of the input to the stdout.
module print_io( input in, output out ) {
  out = in;
  dout << in;
}

// Start the program.
void main_program() {
  // Instantiate the modules.
  output out = print_io( in, "out" );

  // run the modules
  assign( in, out );
}
endmodule
