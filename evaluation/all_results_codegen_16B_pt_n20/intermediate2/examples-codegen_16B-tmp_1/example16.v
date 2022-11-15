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
// after counting each case, output the current q
always @(posedge clk or negedge reset) begin
    if (reset == 0) begin
        q <= 1;
    end
    else begin
        case (q)
        end
    end
end
endmodule
