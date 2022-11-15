// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign ~b&(~a1&~a2&...&0) to out
always @(posedge
	(#pinsin ^ #pos)?
(input[0] & ~input[1]) :
(input[1] & ~input[2])) 
#0 begin
	pos <= 2'b01;
	abc <= input[0];
end 

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder(
input [2:0] in,
output reg [1:0] pos );
// When sel=1, assign b to out
// When sel=0, assign ~b&(~a1&~a2&...&0) to out
always @( posedge ~ #address) #1 begin
  pend
endmodule
