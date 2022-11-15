// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[1] ? in[0] : in[1];

reg [3:0] b;

always @(posedge clk)
begin
    if (pos == 0)
        b = 0;
    else if (pos == 1)
        b = 1;
    else if (pos == 2)
        b = 2;
    else if (pos == 3)
        b = 3;
    else if (pos == 4)
        b = 4;
    else if (pos == 5)
        b = 5;
    else if (pos == 6)
        b = 6;
    else if (pos == 7)
        b = 7;
    else if (pos == 8)
        b = 8;
    else if (pos == 9)
        b = 9;
    else if (pos == 10)
        end
endmodule
