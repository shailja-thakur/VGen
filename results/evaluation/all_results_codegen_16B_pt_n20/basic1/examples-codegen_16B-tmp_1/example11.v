// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// another wire_assign that doesn't realise that two wires (and their characteristics) are the same
module wire_assign2( input in, output out );
module wire_assign2( input in, output out );
// assign an output to a different input - think this might be true for both forms


// Design a module that performs a literal module operation
module literal_op( input in, output out );
// perform module_op() when true and don't otherwise

// Declare e.g. the inputs and outputs
// type input {};
// type base_type {};
// type output;
// Instantiate this module. base_type is what is declared above. 
// NOTE that this instantiation will assign some internal data to type input
//  and need a corresponding instantiation (below) of wire_assign.
module stencil2( type input, type base_typeendmodule
