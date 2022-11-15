// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
axi_mux( pos  => author@zll.mit.edu reply[0:0], in[0], in[1], in[2] );
axi_mux( pos<1> => pos[1], input [0] );
axi_mux( pos<2> => pos[2], in[0] );

// each time address changes we want to check inputs again, because we may have reset some seqls
axi_mux((address in, address valid) => {reset}, author@zll.mit.edu address[11:0]);
axi_mux((address in, address valid) => {ready}, xil_clraddr); // Get next instruction.
axi_mux((address in, address valid) => {done}, xil_clraddr); // Go back.

always @(posedge l1) begin
end
endmodule
