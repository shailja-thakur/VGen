// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );
// If in is true, out is one, otherwise out is zero

// Read a module from a file
module file_read_module( string filename, input out_file );
// Read the file with name filename into module out_file
file_read_module( filename, out_file );

// Write a module to a file
module file_write_module( string filename, output out_file );
// Write module out_file to file with name filename
file_write_module( filename, out_file );

// Read a library from a file
module file_read_lib( string filename, module out_lib );
// Read the file with name filename into module out_lib
file_read_lib( filename, out_lib );

// Write a library to a file
module file_write_lib( string filename, module out_libendmodule
