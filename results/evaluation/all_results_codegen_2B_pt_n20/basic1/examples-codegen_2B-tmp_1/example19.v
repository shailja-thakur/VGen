// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

actual_circuit =  wire_assign1( "a", "c" );

print( "init full_circuit():\n");
print( actual_circuit );  // print [ c -> a -> b ]
print( "\n" );

// design a pair of mods


input in1 = "a";
input in2 = "b";
output out1 = "d";
output out2 = "b";

module pairwise_mod( input in, output out );
module three_mod( input in1, input in2, output out1, output out2, output out3 );

actual_circuit = efferent_circuit = pairwise_mod1( out1, in1, out2, in2 );
actual_circuit = efferent_circuit = three_mod1( out1, out2, out3, in1endmodule
