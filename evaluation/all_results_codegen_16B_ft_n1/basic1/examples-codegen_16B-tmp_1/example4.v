// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
	assign out = in;
else, output would not change its value. 
*/

/*
// Code your design here
module wire_assign( input in, output out );
// assign out to in
	assign out = in;
else
// when any input (or other signal) changes
begin
	// code for when the input (or other signal) changes occurs here
	assign out = in;
end
endmodule
