// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( in or pos ) begin : case1
 {in[2] & in[0]} : #1 in1.pos = 0; 
 {in[2] & in[1]} : begin in1.pos = 1; in2.pos = 0; end
 {in[1] & in[0]} : begin in1.pos = 1; in2.pos = 1; end
 {in[0]} : begin in1.pos = 0; in2.pos = 1; end
endcase	
end
endmodule
