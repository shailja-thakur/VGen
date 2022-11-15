// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign b to in

assign out = (in[1] == 1) ? in[0] : in[1];

reg [3:0] pos;
assign pos = (in[0] == 1) ? pos + 1 : pos;

always @(posedge clk)
{
    if (pos == 3) {
        pos = 0;
        out = in[0];
    }
}

endmodule
