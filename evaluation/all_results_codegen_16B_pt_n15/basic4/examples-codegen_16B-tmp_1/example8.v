// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
extern logic_input clk;
begin bram T_MUX_PORT//SYN=N, P40, P41, P24

//NB_DELAYE(461) // Design the logic function that detects write requests on the
//               // mux select that will become valid before the rising edge of
//               // sel before the mux select becomes valid.
//NB_SELECT_PRIOR(RR) // Select a signal during the preceeding one clock cycle
//                  // if it's old will take no effect
endinstance

endmodule
