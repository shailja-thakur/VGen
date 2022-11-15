// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[2:0] ? pos[1:0] + 1 : pos[1:0];

#(0b00)

reg [7:0] b;

always @(posedge clk)
begin
    if((pos[0] == 0) || (pos[1] == 0))
        b = 0b00;
    else
        b = 0b11;
end

endmodule
