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
always_comb begin
    memory 1 [2:1] ascii;
    reg = ascii.read() ? 0 : (q[2:1] - 1);
clock = reset & clk;
    if (clock)
        reg = if (q==12) 1 else (q[2:1] - 1);
end
endmodule
