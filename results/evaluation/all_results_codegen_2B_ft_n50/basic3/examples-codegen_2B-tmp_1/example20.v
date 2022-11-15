// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos) begin
if(pos==0) begin
out = in; 
end else if(in[1]==1) begin
out = 2'b00 ; 
end else begin
out = 2'b01 ; 
end
end
endmodule
