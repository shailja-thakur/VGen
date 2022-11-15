// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_hann( output out, input in ) {
	assign( out, in );
}
// create an alternate wire system with all requlired Wire named connection operator.
wire_id ann_cwir_auto( cwir_register *signal_wires, cwir_register *counttomod );
// Basic configuration of configurable wire 
wire_id ann_cwir_decl1( reg_expressor0 reg, wire_id idindex );
void ann_cwir_load0( cwir_register *cwir, long size );
bool ann_cwir_load1( cwir_register *cwir );
void ann_cwir_report1( cwir_register *cwir, std::ofstream &StrStream );
endmodule
