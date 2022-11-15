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
assign q = (
    (reset == 0) ? 1 : // reset phase
    (q == maxval) ? 1 : // q is at max value
    clk ?
    ( < counter_max> ? 
        ((counter_now) + 1) : 0 // positive edge 
    ) : counter_now # wait until positive edge of clock begin current cycle
);
end
endmodule
