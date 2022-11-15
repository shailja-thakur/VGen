// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
void wire_assign( input in, output out ) {
  out = in;
}

// Design a module that reads in a character and
// writes it to the console
module char_out( input ch, output out );
// read in a character and write it to the console
void char_out( input ch, output out ) {
  out = ch;
}

// Design a module that reads in a character and
// writes it to the console
module char_out2( input ch, output out );
// read in a character and write it to the console
void char_out2( input ch, output out ) {
  char ch_2 = ch;
  out = ch_2;
}

// Design a module that reads in an integer and
// writes it to the console
module int_out( input int_in, output out );
// read in anendmodule
