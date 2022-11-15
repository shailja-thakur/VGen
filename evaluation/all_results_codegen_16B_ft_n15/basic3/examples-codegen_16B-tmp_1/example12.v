// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=x, output the selected A or B 
always @ ( * ) 
begin 
case(in) 
// When none of input is high, output is zero 
3'b000: begin 
sel = 0; 
out = 2'b00; 
pos = 2'b00; 
end 
/* 
3'b001: begin 
sel = 1; 
out = bits_100(A); 
pos = bits_100(B); 
end 
3'b010: begin 
sel = 1; 
out = bits_010(A); 
pos = bits_010(B); 
end 
3'b011: begin 
sel = 1; 
out = bits_001(A); 
pos = bits_001(B); 
end 
3'b100: begin end
end
endmodule
