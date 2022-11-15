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
initial begin
    if (reset) begin
        q = 1;
    else if (q[3] == 12) begin
        q = 1;
    else begin
        q = q[3] + 1;
    end
end
);

// This is a counter that counts from 0 to 3
// This uses the previous counter as a clock source
module counter_with_clock(
    input clk,
    input reset,
    output reg [4:0] q
); 
initial begin
    if (reset) begin
        q = 3;
    else if (q == 3) begin
        q = 0;
    else begin
        q = q - 1;
    end
end

// This is a counter that counts from 0 to 7
module counter_with_clock_and_period(
    input clk,
    input reset,
    outputend
end
end
end
endmodule
