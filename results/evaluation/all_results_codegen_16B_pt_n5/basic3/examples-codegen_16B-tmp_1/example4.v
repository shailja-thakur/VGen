// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
               // When sel=0, assign a to out
module mux #(
      parameter SEL = 0,
      parameter a = 0,
      parameter b = 1) (
inputs [3:0] sel, 
inputs from_in,
inputs from_sel,
inputs p,
inputs v,
output reg [1:0] out,
output a,
output b
);

// These are instantiations of priority counters, where "timer_x" is the "x" component
// of outputs [1:0]pos, and the select ports are separable from the counter outputs.
module timer_x_from_sel( 
input [3:0] sel, 
input [7:0] p,
input [7:0] v,
// tells the counter which port to read input from (current or carryendmodule
