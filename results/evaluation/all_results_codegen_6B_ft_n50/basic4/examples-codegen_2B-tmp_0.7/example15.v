// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

wire [5:0] c;

mux_reg mux_reg[2];

// Timer1
// period = 250
// clock_divider = 4

mux_reg_inst mux_reg0( 0, 0, 0, 0 );
mux_reg_inst mux_reg1( 0, 0, 0, 1 );

always @ (sel)
{
  mux_reg0.out = a[sel];
  mux_reg1.out = b[sel];
}

// Timer2
// period = 100
// clock_divider = 1

mux_reg_inst mux_reg2( 0, 0, 0, 2 );
mux_reg_inst mux_reg3( 0, 0, 0, 3 );

always @ (sel)
{
  mux_endmodule
