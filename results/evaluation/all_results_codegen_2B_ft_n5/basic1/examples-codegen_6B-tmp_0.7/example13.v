// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
function wire_assign_assign( in, out )
{
	out = in;
}
endmodule
