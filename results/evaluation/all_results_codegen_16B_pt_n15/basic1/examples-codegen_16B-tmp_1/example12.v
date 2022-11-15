// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign2( input in, output out ) {
	// Use the wire assign, which is wiring
	// if i.in passes, outlet i.out will turn green
	assign( in, out );
}
// we had to put () around the module wire_assign to use it as a callback
module CallbackModule () {
	input i;
	output out;
	i : in, out: out;
	wire_assign( i, out );
	// If we remove the ()'s classname then getCallbacks() gives 
	// CallbackModule i.i, i.o, wiring.assign i.o to i.in
	// instead give CallbackModule i.i, i.in, wiring.assign i.in to i.o
}
// in flow two module instances give same input port
module A() { inputendmodule
