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
always @(posedge clk or negedge reset) begin
    if (reset) begin
        q <= 1;
    end else if (q == 12) begin
        q <= 1;
    end else begin
        q <= q + 1;
    end
end

comb(
    input clk,
    input reset,
    module reg [3:0],
    output b
);

wire b0, b1, b2, b3;
comb(
    input clk,
    input reset,
    module reg [3:0],
    output b
    w,
    outclk,
    outreset
);

always @(posedge clk) begin
   if (outreset) begin
       b <= 0;
   end else begin
       if (reg[2] == 1) begin
           b <= 1;
       end
end
end
endmodule
