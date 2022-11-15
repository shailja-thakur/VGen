// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [1:0] sel;
reg [3:0] out;
always @* f(in, pos) begin
    if ((in | ~in) & 1'b0) {
        pos = pos + 1;
    } else if ((~in | in) & 1'b0) {
        pos = pos - 1;
    }
    p = pos > 2 ? [] : [2]; 
    sel = pos > 2 ? p[3] : sel; 
    out =  sel;
end
endmodule
