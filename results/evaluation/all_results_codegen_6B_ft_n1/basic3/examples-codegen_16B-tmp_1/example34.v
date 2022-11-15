// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin 
casex (in) 
//in[2:0] == 3'b001?: pos = 2'b00; // Error here. 'bx001 does not exist
4'b0010: pos = 2'b00;
4'b0011: pos = 2'b01;
4'b0100: pos = 2'b10;
4'b0101: pos = 2'b11;
endcase
end
endmodule
