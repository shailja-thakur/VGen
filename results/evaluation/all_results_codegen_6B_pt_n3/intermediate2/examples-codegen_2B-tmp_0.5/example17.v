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
    q <= 1;
    if (reset == 1'b1) begin 
        q <= 1;
    end else begin 
        if (q == 12) begin 
            q <= 1;
        end else begin 
            q <= q + 1;
        end
    end
end

// This is a counter that counts from 1 to 12, with the clock being at the
// end of the counter.
module counter_with_clock( 
    input clk,
    input reset,
    output reg [3:0] q,
    input [3:0] c
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
initial begin 
    q <= 1;
end
endmodule
