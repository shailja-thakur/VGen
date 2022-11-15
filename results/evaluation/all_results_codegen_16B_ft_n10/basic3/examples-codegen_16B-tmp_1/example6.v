// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or negedge pos[1]) begin
if ( (pos[1] == 1'b0) *& (in != 3'b000)) begin
pos[0] <= 1'b1;
pos[1] <= 1'b1;
end else begin
pos[0] <= 1'b0; // Set high impedance
pos[1] <= 1'b0;
end
end
endmodule
