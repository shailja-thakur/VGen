// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @* begin
case (in)
3'd0: begin pos = 2'b00; end
3'd1: begin pos = 2'b01; end
3'd2,3'd3: begin pos = 2'b10; end
3'd4,3'd5,3'd6,3'd7: begin pos = 2'b11; end
endcase
end 
endmodule
