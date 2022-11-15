// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module assign( input in, output out );

// Design a module that adds the output of a module to the output of another module
module add( input in1, input in2, output out );
// add the output of module 1 to the output of module 2

// Design a module that subtracts the output of a module from the output of another module
module sub( input in1, input in2, output out );
// sub the output of module 1 from the output of module 2

// Design a module that multiplies the output of a module with a number
module mult( input in, output out, input constant );
// multiply the output of a module with a number

// Design a module that divides the output of a module with a number
module div( input in, output out, input constant );
// divide the output of a module with a number

// Design a module that outputs a number
module printendmodule
