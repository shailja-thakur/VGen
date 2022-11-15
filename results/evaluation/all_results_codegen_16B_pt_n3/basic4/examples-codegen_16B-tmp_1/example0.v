// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
assign out = {reg}0[a]; // predicate

tester;
.output [13:0];
//<<design_mux6, {verilog_src}>>
reg [4:0]   in_a_b_out;
reg [$bits(sel):0]                 sel;
reg [1:0]  [$bits(sel):0]          out;
wire [$bits(sel)-1:0]             tmp;
//
                                   . . .

// Multiplex input matches output.
supply_00; // multiplex
        sel(0) # (select(in_a_b_out)==false ? 0x04 : 0);
        out(0) <- in_a_b_out(out[0]);
        sel(1) # (select(in_a_b_out)==endmodule
