// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_reverse( input in, output out ) {
   out = in;
}
// Design a module that prints the input
module output_to_input(input in, output out) {
   print("Output: " + out);
}
// Print the input
module print_input(input in) {
   print("Input: " + in);
}

module a(inout int input, output out ) { }

module b(input int, output out) { }

module c(input inout int, output out) { }

module d(input inout int input, output out) { }

module e(input inout int input, output out) { }

module f(input inout int input, output out) { }

module g(input inout int input, output out) { }

module h(input inendmodule
