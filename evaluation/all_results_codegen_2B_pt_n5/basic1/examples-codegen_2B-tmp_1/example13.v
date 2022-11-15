// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

module assign_inv( input in[wire] );
// assign out to in

module main() {
// create the module
	wire inv[net];
	assign_inv inv_assign = assign_inv( inv ); // generates the module itself
	assign_inv wire[wire+2];
	inv_assign diag_assign = diag( inv_assign, wire+2 ); // 
	wire_assign& out = ref( wire[wire]);

	inv( node1 ) = 8;  // assigns in = inv
	out = 1;
}endmodule
