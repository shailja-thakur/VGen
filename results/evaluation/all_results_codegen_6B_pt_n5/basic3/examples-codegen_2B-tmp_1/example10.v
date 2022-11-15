// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
{
pos="000";
if(in[3] == 100OD){pos="/10";} 
else if(in[2] == 100OD){pos="/20";}
else if(in[1] == 100OD){pos="/30";}
else pos="000";
if(!in[0] == 100){pos="/0"+pos;}
}
//reg [2:0] pp = pos(0:2'b00)/''1'b1
//reg [2:0] up = pos(0:2'b11)/''1'b0
endmodule
