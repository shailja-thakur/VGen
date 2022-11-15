// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in, pos) 
begin 
case(in)
0: begin pos=2'b00; end 
1,2,3,4: begin pos=2'b01; end
5,6,7: begin pos=2'b10; end
default: pos=2'b00; 
endcase 
end
endmodule
