// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// Design a module that prints the output
module print( input in, output out );
// print out the output

// Design a module that uses the output of the print module
module print_wire( input in, output out );
// print out the output of the print module

// Design a module that uses the output of the print_wire module
module print_wire_wire( input in, output out );
// print out the output of the print_wire_wire module

// Design a module that prints the input and output
module print_wire_wire_wire( input in, output out );
// print out the output of the print_wire_wire_wire module

// Design a module that prints the input and output of the print_wire_wire_wire module
module print_wire_wire_wire_wire( input in, output out );
// print out the output of the print_wireendmodule
