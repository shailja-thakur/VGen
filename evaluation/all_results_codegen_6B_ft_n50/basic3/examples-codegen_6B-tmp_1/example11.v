// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
parameter d0 = 0, d1 = 1, d2 = 2;
// Output without sel
always @(in) 
if(in==2'b00) pos = d2; 
else if(in==2'b01) pos = d1; 
else if(in==2'b10) pos = d0; 
else pos = d2; 
// Output with sel
always @(in or enable) 
if(enable)
case(in)
3'b100: pos = d1;
3'b010: pos = d2;
3'b001: pos = d3;
default pos = d4;
endcase

endmodule
