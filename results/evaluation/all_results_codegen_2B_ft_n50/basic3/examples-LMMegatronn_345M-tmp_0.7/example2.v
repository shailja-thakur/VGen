// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// We assume that they are in the "1" case. 
always @ ( in )
    case ( in )
        3'b001: pos = 0;
        3'b010: pos = 1;
        3'b100: pos = 2;
        3'b000: pos = 3;
        3'b001: pos = 4;
        default: pos = 0;
    endcase
endmodule
