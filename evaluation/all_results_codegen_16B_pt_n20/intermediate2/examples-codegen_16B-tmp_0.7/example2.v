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
always @( posedge clk )
begin
        if ( reset )
        q <= 1;
        else
        case q is
        12'd0: q <= 1;
        default: q <= q + 1;
        endcase
end 
// Generate a clock by incrementing q on the positive edge of clk
always @( posedge clk )
begin
        q <= q + 1;
end

// Generate a clock by decrementing q on the negative edge of clk
always @( negedge clk )
begin
        q <= q - 1;
end


// This is a counter that counts from 12 to 1
module counter_rev( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// onendmodule
