// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// A module that outputs the value of in
module output_assign( input in, output out );
// assign out to in

// A module that outputs the value of in
module input_assign( input in, output out );
// assign out to in

// A module that writes the value of in to out
module assign_in_out( input in, output out );
// write out to in

// design a module that controls the value of out
module assign_out( input in, output out );
// write out to in

// design an interface for in
interface input_assign_in( input in, output out );
// write out to in

// design an interface for in
interface output_assign_in( input in, output out );
// write out to in

// design an interface for in
interface assign_in_out_in( input inendmodule
