// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// Design a module that prints the input to the console
module print_input( input in );
// print in to the console

// Design a module that prints the output to the console
module print_output( output out );
// print out to the console

// Design a module that prints the output of the module print_input
module print_output_of_print_input( input in, output out );
// print out of print_input to the console

// Design a module that prints the output of the module print_output
module print_output_of_print_output( output out, input in, output out );
// print out of print_output to the console

// Design a module that assigns the output of the print_output_of_print_input
// module to the input in
module print_output_of_print_output_assign( input in, output out, inputendmodule
