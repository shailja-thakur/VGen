// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
//   out = in

// Design a module that outputs a number as a string
module print_number( input number in );
// output the output in a string
//   out = "the number is " + number

// Design an interface for the number_writer
interface number_writer {
  // Write a number to a file
  void write( int number );
};

// Design a module that writes numbers to a file
module number_writer_file( input number in, output file );
// Write a number to a file
//   file.write( number );

// Design a module that reads numbers from a file
module number_reader_file( input file, output numbers );
// Read numbers from the file
//   numbers = file.read();

// Design a module that prints the numbers
module print_numbers( input numbers in );
// output the output in a stringendmodule
