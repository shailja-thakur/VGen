// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
wire synthesis_inst;
wire synthesis_input[8:0];
// Synthesis stage.
assign synthesis_out{ synthesis_input[16:0] + synthesis_input[10:6] } = none_or_assign_const(sel, a ^ b );
// Synthesis stage.
assign synthesis_inst = synthesis_out == 16'b111110000000000000000;

// Configuration
synchronize synthesis_inst;

fragment synth_chunk : synth_inst;

// Top-level.
reg [4:0] out;
wire4 inputs;
wire5 synth_inst_pins;
501 synth_inst_nop = 09;

// Structure
reg [15:0] out1;
reg [15:0] out2; // This is to prevent propagation of the whole of metadata to the components.
wire[8:0endmodule
