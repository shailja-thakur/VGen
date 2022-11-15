// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
{
	out = in;
}
// Assign another module to out
module wire_assign_2( output out, module mod );
// Assign mod to out
{
	out = mod;
}
// Assign a wire to out
module wire_assign_wire( input wire in, output wire out );
// assign in to out
{
	out = in;
}
// Assign all the inputs of a module to the output wire
module wire_assign_module_input( module mod, output wire out );
// Assign all the inputs of a module to the output wire
{
	out = mod.in;
}
// Assign the output wire to all the inputs of a module
module wire_assign_module_output( input wire in, module mod );
// Assign the output wire to all the inputs of a module
{
	mod.endmodule
