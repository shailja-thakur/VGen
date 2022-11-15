// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or sel) begin
 if (sel == 1)
 pos <= 2'b00;
 else if (in[2] == 1)
 pos <= 2'b10;
 else if (in[1] == 1)
 pos <= 2'b01;
 else
 pos <= 2'b11;
end
endmodule
