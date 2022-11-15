// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;
// Design a module that prints a message when its input changes.
module wire_change( input in, output out );
// Design a module that prints a message when its input changes.
// assign out to in
assign out = in;
always @( in )
begin
	$display( "Input changed to %d", in );
end
endmodule
