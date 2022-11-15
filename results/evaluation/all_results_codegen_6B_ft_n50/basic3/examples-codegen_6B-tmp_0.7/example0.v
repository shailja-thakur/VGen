// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) 
begin 
case(in) // case statements are used to set pos
3'b100: pos = 2'd0; 
3'b110: pos = 2'd0; 
3'b101: pos = 2'd1; 
3'b111: pos = 2'd1; 
//pos = 2'd0; 
//this is the output when sel=1
endcase 
end 
endmodule
