// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos)
begin 
case( pos ) 
2'b00: pos = 2'b10; 
2'b01: pos = 2'b01; 
default:$display("Default"); 
endcase
end 
//pos = normal priority encoder
endmodule
