// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
constant SEL_BEGIN = 0;
constant SEL_B = 1 << 1;    // Valid values: 0 to 3
constant SEL_E = 1 << 3;    // Valid values: 0 to 3 
constant SEL_B_B = SEL_B | 0x1;
constant SEL_B_E = SEL_B | 0x2;
constant SEL_E_B = SEL_E | 0x1;
constant SEL_E_E = SEL_E | 0x2;
constant MPDR = 63;
// Design buttons for entering quanta values.
constant A_B_ON = 0x1;
constant A_B_OFF = 0x0;
var A_B;
// Design buttons for entering quanta values.
constant E_B_ON = 0x2endmodule
