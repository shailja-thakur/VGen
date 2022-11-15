// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
constexpr int inputs     [] = {4, 0, 0, 4}; 
constexpr int input_sels[] = {1, 0, 1, 1};
constexpr int outputs[]   = {0, 4, 4, 0}; 
module new_layer(
inputs [4:0] a, b,
inputs [4:0] out_a, out_b );

inputs out_a;


   // Instantiate an arbitrary number of multiplexers.
module top_module(
inputs [4:0] a, b,
inputs [4:0] out_a, out_b );
module side_module(
inputs [4:0] a, b,
inputs [4:0] out_a, out_b );
.
// Each top_module feeds a needle *TERMALLY* to side_module.endmodule
