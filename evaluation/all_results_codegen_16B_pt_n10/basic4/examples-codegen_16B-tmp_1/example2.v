// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Tests if the highest bit is 1. Forces sel if it is, to ensure we eventually
// see the correct priority.
module test(
output [12:0] out_d,
input  [12:0] in_d,
input  [12:0] sel_in
);

wire sel_force_high;
always @( posedge sel_in )
        sel_force_high <= {sel_force,' = 1 };

always @( posedge a )
        if (sel_force_high == 0)
            out_d <= in_d;
        else
            out_d <= sel_in;

endmodule
