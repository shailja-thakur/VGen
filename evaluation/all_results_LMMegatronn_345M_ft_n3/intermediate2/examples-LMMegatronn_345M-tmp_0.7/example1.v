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
reg [3:0] q_;
always @ ( posedge clk )
begin
    if (reset == 0)
        q_ <= 0;
    else if (q == 0)
        q_ <= q_ + 1;
    else
        q_ <= q_;
end

endmodule
