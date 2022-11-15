// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [1:0] sel = 0;
// When r=1, assign carry to pos
reg [1:0] r = 0;
always @(posedge clk) 
    if(sel==1) 
        pos <= in;
    else
        pos <= r;
end
endmodule
