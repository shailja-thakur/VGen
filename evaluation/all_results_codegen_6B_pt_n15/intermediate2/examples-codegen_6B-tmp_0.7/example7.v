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
always(clk or reset)
begin
    case reset:
        q <= 1;
    end
    case clk and find_pos($clock) = 1:
        if q[0] == 12 then q <= 1; else q <= q[0] + 1;
    end
end

endmodule
