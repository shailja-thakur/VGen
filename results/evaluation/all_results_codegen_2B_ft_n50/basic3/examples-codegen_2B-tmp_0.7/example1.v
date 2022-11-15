// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( in or pos ) 
begin
if (pos == 3'b000) begin
 assign b = in[2];
 assign a = in[1];
 end
else if (pos == 3'b001) begin
 assign b = in[1];
 assign a = in[0];
 end
else if (pos == 3'b010) begin
 assign b = in[0];
 assign a = in[1];
 end
else if (pos == 3'b011) begin
 assign b = in[1];
 assign a = in[0];
 end
else if (pos == 3'b100) begin
 assign b = in[2];
 assign a = in[1];
 end
else if (pos == 3'b101) begin
 assign b = in[1];
 assign a = in[0];
 end
else if (pos == 3'b110)end
endmodule
