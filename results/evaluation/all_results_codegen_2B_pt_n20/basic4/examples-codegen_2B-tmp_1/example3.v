// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, do not assign anything to output.
// When sel=3, do not assign anything to output.

// TODO: Generate the interrupt logic.  Setup interrupt registers and a
// function [val] external writing arg0.
// Register 4 reads from a interrupt provider.  There are 8 bit 38x4 
// 0:100 bases in the interrupt register.  The low nibble is for the
// highest numbered interrupt, 0x08 through 0x38, including bit 0.  
// 0x80 is for the lowest nibble of the interrupt register, the top bit.
// Args 0 and 1 are: int value (0-31 k Hz), register at step or 'sel'
clock [23:0] int0_clk;
clock [23:0] tclk;
wire [4:0]   int2_reg;

endmodule
