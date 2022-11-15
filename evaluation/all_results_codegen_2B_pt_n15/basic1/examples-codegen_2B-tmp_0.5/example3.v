// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module output_assign( input in, output out );

// Design a module that has a dependency on the output
module output_dependency( input in, output out );

// Design a module that depends on the output
module input_dependency( input in, output out );

// Design a module that has a dependency on both the input and output
module input_output_dependency( input in, output out );

// Design a module that has a dependency on both the input and output
module output_input_dependency( input in, output out );

// Design a module that has a dependency on both the input and output
module input_output_dependency_with_redirection( input in, output out );

// Design a module that has a dependency on the output and a dependency on the input
module output_dependency_with_redirection( input in, output out );

//endmodule
