// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @(posedge clk or negedge rst) combo_sel, combo_sel = sel or insel;

reg [4:0] out = combioportsel(reg(4:0), default(combo_sel),
   {a, b, combo_sel, insel, unassigned});

endmodule
