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
    q = 0;
    // on reset, assign q to 1
    if (reset) q = 1;
    else
    {
        if (q == 12) q = 1;
        else q++;
    }
end

// This is a counter that counts from 0 to 11
module counter_with_reset( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 0
// else if q is 11, assign q to 0
// else, increment q by 1 

initial begin 
    q = 0;
    // on reset, assign q to 0
    if (reset) q = 0;
    else
    {
        if (q == 11) q = 0;end
endmodule
