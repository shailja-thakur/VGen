// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// If none of the input bits are output, output is zero.
reg [1:0] last;

always @(in) begin
	case ({in,last})
		3'b110:begin
			pos = 2'bxx; 
		end
		3'b101:begin
			pos = 2'bxx; 
		end
		3'b01100:begin
			pos = 2'bxx; 
		end
		3'b0zz:begin
			pos = 2'bxx; 
		end
		default:begin
			pos = 2'bxx; 
		end
	endcase
end

assign 	out = pos[1]^pos[0];
endmodule
