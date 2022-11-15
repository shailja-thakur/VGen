// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_out_to_in( input in, output out );

// wire_assign_out_to_in is a module, so it can be used as a submodule
module wire_assign_out_to_in_submodule( input in, output out );

// wire_assign_out_to_in_submodule is a submodule, so it can be used as a
// submodule
module wire_assign_out_to_in_submodule_submodule( input in, output out );

// wire_assign_out_to_in_submodule_submodule is a submodule, so it can be
// used as a submodule
module wire_assign_out_to_in_submodule_submodule_submodule( input in, output out );

// wire_assign_out_to_in_endmodule
