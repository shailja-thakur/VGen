// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// in is input to the module
// out is output of the module
// add a module that assigns the output to the input
function wire_assign( input in, output out ) {
  out = in;
};
// wire the modules together to form a module
module wire( input in, output out );
// connect the modules together
// in is input to the module
// out is output of the module
// add a module that converts a number to a string
function to_string( input in, output out ) {
  out = in;
};
// wire the modules together to form a module
module to_string( input in, output out );
// connect the modules together
// in is input to the module
// out is output of the module
// add a module that converts a number to a string
function to_string( input in, output out ) {
  out = in;
endmodule
