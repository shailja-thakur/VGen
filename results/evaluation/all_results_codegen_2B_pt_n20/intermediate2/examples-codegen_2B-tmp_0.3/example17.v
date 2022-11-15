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
wire [3:0] t;

initial begin
    q = 1;
    t = 0;
    clk = 0;
    reset = 1;
end

initial begin
    clk = 1;
    reset = 0;
end

initial begin
    q = 12;
    t = 0;
    clk = 0;
    reset = 1;
end

initial begin
    q = t;
    t = t + 1;
    clk = 1;
    reset = 0;
end

initial begin
    q = t;
    t = t + 1;
    clk = 1;
    reset = 1;
end

initial begin
    q = t;
    t = t + 1;
    clk = 1;
    reset = 0;
end

initial begin
    q = t;
    end
endmodule
