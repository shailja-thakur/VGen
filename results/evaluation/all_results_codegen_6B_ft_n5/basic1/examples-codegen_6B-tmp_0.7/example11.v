// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
out = in;

// design a module that prints the input
module print_input( input in );
// print in
print "input: ", in;

// design a module that prints the output
module print_output( output out );
// print out
print "output: ", out;

// design a module that adds 1 to the input
module add_one( input in );
// add 1 to in
in += 1;

// design a module that adds the input to the output
module add( input in, output out );
// add in to out
out = in + out;

// design a module that adds 2 to the output
module add2( output out );
// add 2 to out
out += 2;

// design a module that concatenates the output
module concat( output out, input in );
// concatenate the output with the input
outendmodule
