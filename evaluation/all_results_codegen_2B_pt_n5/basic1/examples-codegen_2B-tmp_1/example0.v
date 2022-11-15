// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire2vector( wire in,wire2vector out );
// determine the standard cells to each input
using CellStruct = vector<Cell>,;
vector<CellStruct> standardcells(vector<unsigned> src,vector<unsigned> dst);
// determine a vector of wires that has all the standard connections
using ChCellStandardFormConn = vector<Transformer>;
vector<ChCellStandardFormConn> standard_cellslist(vector<unsigned> src,vector<unsigned> dst);



// Main program
auto main() -> int
{
  // Possibilty to swap the inputs and outputs addresses
  using Input = wires2vectors_inptr, Ouputs = vector<wires2vectors_outptr>;
  using PyoMapping = wires2vectors_mapptr;
  
  // Ada net flow modifier computes the net flow of the inputs cells 
  endmodule
