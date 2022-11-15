// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
wire [3:0] b; 
// When sel=0, assign s to out
wire [3:0] s; 
    
      // Build the component
primitive adder implementation
( 
input [2:0] in, 
output reg [1:0] out);

// Implement the reg function
reg r, r2=r+1;
reg [3:0] out;
reg shift; // For accurate compare

trigger 1w
always @*
begin 
    b=0;
    s=0;
    
    for (b=0;b<125;b++)
    @ b[4:0] != offset_reg[4:0];
	bool result = select (b[3]=b[2:0]) != b[1]; -- if(!result)b=b+1;
	result = selectend
endmodule
