// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
//
//
//
// mt2 mux mux mux...
//
// The mux mux mux is the mux.
//
//
// The mux is the mux which are not the mux.
//
//
//
//
// mt3 mux mux...
//
//
// The mux mux is the mux which are not the mux.
//
//
//
//
// mt2 mux mux...
//
//
// The mux mux is the mux which are not the mux.
//
//
//
//
//
//
//

`include "bsg_defines.v"

module bsg_mux #(parameter `BSG_INV_PARAM(width_p)
               endmodule
