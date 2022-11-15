// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk) begin
    if (reset) q <= 1;
    else if (q == 12) q <= 1;
    else q <= q + 1;
end

tb_clk_i <= clk;
tb_clk_o <= clk;

// perform the computation f(x) = x^3^5
reg [3:0] f;
reg [3:0] g;

always @(posedge clk) begin
    if (tb_clk_i) begin
        f <= x^3^5;
    end
    else begin
        g <= f;
    end
end

// perform the computation g(x) = x^3^5 - x
reg [3:0] h;

always @(posedge clk) begin
    if (tb_clend
endmodule
