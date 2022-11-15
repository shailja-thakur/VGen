// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// Note: in the case when sel is high, there is no
// change in value of high, but there is a change 
// in value of other inputs . That is to say sel=1
// has the highest priority and if the others change
// lead to incorrect output. 
//highest priority
always @(*) 
if(sel1) 
begin 
 pos=2'b00; 
end
//second highest priority
else if(sel2) 
pos=2'b01; 
//third highest priority
else if(sel3) 
pos = 2'b10; 
//fourth highest priority, does not get assigned
//least highest priority
else begin pos =2'b11 ;end 
endmodule
