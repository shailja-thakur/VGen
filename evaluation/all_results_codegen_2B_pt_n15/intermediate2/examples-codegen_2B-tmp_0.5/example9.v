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
    q = reset;
    if (clk == 1'b1) begin
        if (q == 12'b12) q = 1'b1;
        else if (q == 12'b0) q = 1'b1;
        else q = q + 1'b1;
    end else begin
        if (q == 12'b12) q = 1'b1;
        else q = q + 1'b1;
    end
end 

// This is a counter that counts from 1 to 12
module counter_x( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment qendmodule