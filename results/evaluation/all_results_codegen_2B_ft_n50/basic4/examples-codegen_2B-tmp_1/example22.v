// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

// Notice that we explicitly count each output being asserted or deasserted. 
// This is necessary because "1'bz" is a statement keyword, so "[4:0]: (1,2,3, etc.)" fails on the output count. 
always @(a or b or sel)
casex (sel)
1'b0: out <= a; 
1'b1: out <= b; 
endcase

endmodule
