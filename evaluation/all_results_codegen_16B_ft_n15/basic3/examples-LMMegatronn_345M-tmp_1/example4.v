// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or in )
begin
    case({in,1'b0})
        1'b0: pos <= in;
        1'b1: pos <= 1'b0;
    endcase
    else
        pos <=              in[1] ? 2'b10 : 
                                in[0] ? 2'b01 :
                              in[2] ? 2'b11 :
             endmodule
