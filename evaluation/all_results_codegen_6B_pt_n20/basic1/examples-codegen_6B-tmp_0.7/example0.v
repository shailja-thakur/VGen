// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign2( output out, input in );
// assign out to input in
module wire_assign3( input in, output out );
// declare an output wire
module wire_declare( output out );
// declare an output wire using a value
module wire_declare_use( output out, input in );
// declare an output wire that is used in a module
module wire_declare_use_module( output out, input in, module module_name );
// declare an output wire that is used in a module
module wire_declare_use_module_multiple( output out, input in, module module_name, module module_name_2 );
// declare an output wire that is used in multiple modules
module wire_declare_use_multiple( output out, input in, module module_name, module module_name_2 );
// declare a module that uses aendmodule
