// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
always @ ( in or sel )
begin
	if ( sel == 1 )
	begin
	case ( in )
	// 3-bit input
	3'b000: begin pos = 2'b00; end
	3'b001: begin pos = 2'b01; end
	3'b010: begin pos = 2'b10; end
	3'b011: begin pos = 2'b11; end
	3'b100: begin pos = 2'b00; end
	3'b101: begin pos = 2'b01; end
	3'b110: begin pos = 2'b10; end
	3'b111: begin pos = 2'b11; end
	endcase
	end
	else
	begin
	case ( in )
	// 3-bitend
endmodule
