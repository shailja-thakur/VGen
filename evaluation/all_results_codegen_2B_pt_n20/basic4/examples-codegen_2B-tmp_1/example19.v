// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
reg [4:0] x, y; 
always@ (*b == 0 * or *b == 7 * b);
always@ (*a == 0 * or *a == 7 * a);
always@ x == 0 and y == 0;
always@ x == 2	and y == 2;
always@ x == 2 and y == 0;
always@ x == 0	and y == 2;
NOBLK ( 
  select  sel;
  out : x = read(b, 0); 
  out : y = read(b, 1); 
);
);
boot 
{
+	await rgb_blk(RGB, var buf)
  { anf(col) == 7
  {
  CODE: mod 34
  	vec a = 	{ 4, 5, 6, 7,
  6,  7,  5endmodule
