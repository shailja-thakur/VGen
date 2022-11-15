// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in) begin
if(in[0]) begin
pos = 1'b00;
end
else if(in[1]) begin
pos = 1'b01;
end
else if(in[2]) begin
pos = 1'b10;
end
else
pos = 1'b11;
end
endmodule
