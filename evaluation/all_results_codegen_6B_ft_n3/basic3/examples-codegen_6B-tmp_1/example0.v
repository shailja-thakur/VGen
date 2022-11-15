// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin
case(in)
[2:0] 1: out = 2'b00; 
[2:0] 2: out = 2'b01;
[2:0] 3: out = 2'b10; 
[2:0] 4: out = 2'b11;
endcase
//don't care for unexpected input
end
endmodule
