// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @* begin 
bit order (if sel == 1 && in[pos-1] = 0)
begin 
   pos = pos - 1;
   out = b;
end else 
begin 
   bit posMask;
   if (sel = 2) 
   posMask = 4-b;  
   else 
   posMask = 4;  
   pos = pos + 1 & posMask;
   b = in[pos-1];
end
end
endmodule
