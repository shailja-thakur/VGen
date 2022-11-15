// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[1];

#5
reg [2:0] x;
#6
#7
always @(*) begin
    pos = pos - 1;
    if (x[pos] == 0)
    begin
        pos = pos + 1;
        x = x + 1;
    end
end

always @(*) begin
    pos = pos - 1;
    if (pos == 0)
    begin
        x = x - 1;
    end
end
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#0
#1
#2
endmodule
