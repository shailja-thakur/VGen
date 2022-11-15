// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (*)
	case (in)
		3'b000:  begin  pos = 4'b0001; in[1] = 0; end // 1
		3'b001:  begin  pos = 4'b0010; in[1] = 1; end // 2
		3'b010:  begin  pos = 4'b0100; in[1] = 0; end // 3
		3'b011:  begin  pos = 4'b1000; in[1] = 1; end // 4
		3'b100:  begin  pos = 4'b0000; in[1] = 0; end // 5
		3'b101:  begin  pos = 4'b0001; in[1] = 1; end // 6
		3'b110:  begin  pos = 4'b0010; in[1]end
endmodule
