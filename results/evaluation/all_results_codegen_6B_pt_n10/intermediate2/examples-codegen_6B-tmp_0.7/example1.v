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
    if (reset) begin
        q <= 1;
    end
    else if (q == 12) begin
        q <= 1;
    end
    else begin
        q <= q + 1;
    end
end

// This is a register that tracks the current value of q
reg [3:0] q_reg;

// Configure the output for the base case
assign q_reg = q;

// This is a counter that counts from 1 to 13
module counter_13( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 13, assign q to 1
// else, increment q by 1 
always @endmodule
