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
always ( clk' = clk and reset )
begin
    // count 1 - 1
    if ( 0 == reset )
        q <= 1;
    // cause 12 to be the new q
    else if ( MAX_COUNT <= q )
        q <= 1;
    else
        q <= q + 1;
end
endmodule
