// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign 0 to out
always @* begin
  pos <= ~(in | pos);
end link_one;
// When sel=1, assign a to out
// When sel=0, assign 0 to out
always @* begin
  if (sel==1) pos <= ~(proc.a | pos);
end link_two;
// When sel=1, assign c to proc.o and a to proc.o
// When sel=0, assign 0 to proc.o and a to proc.o
always @* begin
  if (sel==1) proc.o <= ~proc.a & ~proc.c & pos;
  else if (sel==0) proc.o <= ~pos & ~proc.a & (~pos);
end link_three;
endmodule
