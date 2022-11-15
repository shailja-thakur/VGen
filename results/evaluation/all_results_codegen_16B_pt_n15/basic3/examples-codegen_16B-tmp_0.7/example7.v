// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
// When sel=0, POS is 1
// When sel=1, POS is 0
always @(posedge clk) begin
    if (sel==0)
    {
        pos <= a;
    }
    else
    {
        pos <= b;
    }
end
endmodule
