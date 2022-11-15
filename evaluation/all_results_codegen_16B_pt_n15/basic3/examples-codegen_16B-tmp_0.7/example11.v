// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [1:0] sel;
always begin
if ((in[0]|in[1])==0) sel <= 0;
else if ((in[0]==1) and (in[1]==0)) sel <= 1;
else if ((in[0]==0) and (in[1]==1)) sel <= 2;
else if ((in[0]==1) and (in[1]==1)) sel <= 3;
end
if (sel==0) pos <= 0;
else if (sel==1) pos <= 1;
else if (sel==2) pos <= 2;
else if (sel==3) pos <= 3;
end 
endmodule
