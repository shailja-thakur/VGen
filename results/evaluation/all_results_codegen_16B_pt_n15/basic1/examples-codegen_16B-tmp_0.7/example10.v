// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// Implementation of the module wire_assign
void wire_assign( input in, output out )
{
  out = in;
}
// END OF wire_assign MODULE CODE

// The following is the "BLIF" file format that is written to disk by Icarus
// Synthesis.  It contains the netlist and the cell library.

// This compiler's output is a .blif file, so make sure there isn't an .cpp
// file with this name already.

// This is the top level module for this project
module top_module;
// This is the top level cell for this project
    cell top_cell;
// End of the top level cell

// This is the cell library for this project
    library top_cell_library;
// End of the cell library

// This is the net list for this project
    netlist top_netlistendmodule
