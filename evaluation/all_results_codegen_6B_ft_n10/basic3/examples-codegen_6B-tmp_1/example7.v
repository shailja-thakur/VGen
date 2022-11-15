// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(sel or in)
begin: P_ENCODING 
	case (sel)
	0: if(in==3'b001) pos=2'd0;else pos=2'd1;
	1: if(in==3'b010) pos=2'd0;else pos=2'd1;
	2: if(in==3'b100) pos=2'd0;else pos=2'd1;
	3: if(in==3'b1000) pos=2'd0;else pos=2'd1;
	//default pos=2'd0;
	endcase
end
endmodule
