// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
parameter a = 2'b00, b = 2'b01, c = 2'b10;
// Pos and neg logic, stores output
always @ ( in ) 
begin 
	if(in[0]) 
	begin 
	case(pos) 
	a: pos = 2'b00; 
	b: pos = 2'b01;
	c: pos = 2'b10;
	endcase	
	end 
	else 
	begin 
	case(pos) 
	a: pos = 2'b10; 
	b: pos = 2'b11;
	c: pos = 2'b01;
	endcase	
	end 
end 
endmodule
