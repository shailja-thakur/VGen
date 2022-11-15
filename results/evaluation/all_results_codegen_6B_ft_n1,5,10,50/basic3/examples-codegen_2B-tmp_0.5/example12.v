// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out

wire [7:0] a, b;

always @(posedge clk) 
begin
    if (in[0] == 1)
        a = a + 1;
    if (in[1] == 1)
        b = b + 1;
    pos = pos + 1;
end

endmodule
