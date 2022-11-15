// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg output [1:0] b;

reg [7:0] p;

// When sel=0, decode the least-signficant bit
reg [7:0] sel;

always @(posedge clk) begin
    if (in[0] != in[1])
    begin
        sel = 0;
        b = 0;
        p = in[0];
    end
    else
    begin
        sel = ~in[0] & in[1];
        b = ~in[sel];
        p = ~in[sel] & ~in[0];
    end
end

always @(posedge clk) begin
    pos[0] = p;
    pos[1] = p >> 1;
    pos[2] = p >> 2;
end

always @(posedge clk)endmodule
