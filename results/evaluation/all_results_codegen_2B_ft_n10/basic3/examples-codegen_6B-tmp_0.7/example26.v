// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) 
begin 
	if (in[2]) 
	begin 
	case (in[1:0]) 
	2'b11: pos=2'd3; 
	2'b10: pos=2'd2; 
	2'b01: pos=2'd1; 
	default pos=2'd0; 
	endcase 
	end 
	 
	else if (in[1]) 
	begin 
	case (in[1:0]) 
	2'b11: pos=2'd1; 
	2'b10: pos=2'd2; 
	2'b01: pos=2'd3; 
	default pos=2'd0; 
	endcase 
	end 
	
	else if (in[0]) 
	begin 
	endmodule
