// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge s or negedge v) begin
    if (v & s && !in[0]) {
        pos[1:0] <= 2'd0;
    } else if (v && in[0]) {
        pos[1:0] <= 2'd3;
    } else if (!in[0] && in[1] && !in[2]) {
        pos[1:0] <= 2'd4;
    } else if (in[0] && in[1] && in[2]) {
        pos[1:0] <= 2'd7;
    } else if (in[0] || in[1] || in[2]) {
        pos[1:0] <= 2'd6;
    } else if ((!s) && (!in[1]) && (!in[2])) {
        pos[1:0]end
endmodule
