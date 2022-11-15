// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// sel=0 means a is output
// Note, in[2] is unused and skp is output with sel=0
always@(in or sel) // when in or sel changes, output is changed
begin
	if(sel==0) pos=0; 
	else if(in[2]) pos=2; // in[2]=1 the assignment is o.k.
	else if(in[1]) pos=1; // in[2]=0 or in[1]=1 the assignment is not o.k.
	else if(in[0]) pos=0; // if nothing is output, it goes to zero.
	else pos=0; // shouldn't reach this line.
end
endmodule
