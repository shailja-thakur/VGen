// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or in[3])
    if (sel)
    begin
        pos <= 1'b0;
        case sel:
            pos <= in & 0b00111111;
    end
endmodule
