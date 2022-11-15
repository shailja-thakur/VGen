// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos)
begin 
	case(pos) // pos=2'b00 if sel=1
	2'b00: if(in==3'b100) pos=2'b01;
	2'b01: if(in==3'b110) pos=2'b10;
	2'b10: if(in==3'b101) pos=2'b11;
	2'b11: if(in==3'b111) pos=2'b00;
	endcase
end 
endmodule
