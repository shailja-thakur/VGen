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
    q = 1;
    clk = reset;
    while(1) begin
        if (clk == 0)
            q = 1;
        else if (q == 12)
            q = 1;
        else
            q = q + 1;
    end
end

// This is a counter that counts from 1 to 12
// The counter is initialized to 0, which means that the counter 
// starts at the beginning of the counter.
module counter2( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
initial begin
    q = 1;
    clk = reset;
end
endmodule
