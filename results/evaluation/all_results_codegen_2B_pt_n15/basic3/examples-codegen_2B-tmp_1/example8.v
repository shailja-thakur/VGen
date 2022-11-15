// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out

switch (pos) {
    case 5: case 6:
        cs = b;
        b &= ~(1 << 5);
    // WRITE 5 (hw error here) not possible
        break;
    case 4: case 7:
        cs = b;
        b &= ~(1 << 7);
    // WRITE 7 (hw error here) not possible
        break;
    default:
        cs = b;
        b |= (1 << pos);
    // WRITE pos (1..3) (hw error here) not possible
        break;
};
endmodule
