// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos)
case (pos)
 3'b000 : begin 
 //out and sel <=0;
 out <= in;
 end
 3'b001 : begin 
 out <= 2'b00;
 end
 3'b010 : begin 
 out <= 2'b01;
 end
 3'b011 : begin 
 out <= 2'b10;
 end
 3'b100 : begin 
 out <= 2'b11;
 end
 3'b101 : begin 
 out <= 2'bzz;
 end
 3'b110 : begin 
 out <= ~ in;
 end
 3'b111 : begin 
 out <= ~2'bzz;
 end
endcase


endmodule
