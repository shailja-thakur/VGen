// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
case (pos)
0: begin
	assign b = in[0];
	assign a = in[1];
	assign sel = in[2];
	end
1: begin
	assign b = in[1];
	assign a = in[0];
	assign sel = in[2];
	end
2: begin
	assign b = in[2];
	assign a = in[0];
	assign sel = in[1];
	end
default: begin
	assign b = in[2];
	assign a = in[1];
	assign sel = in[0];
	end
endcase
endmodule
