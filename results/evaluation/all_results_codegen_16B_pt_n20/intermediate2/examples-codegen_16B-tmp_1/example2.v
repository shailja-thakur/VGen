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
always @(posedge clk) 
        begin 
            case (reset == 1) 
            q <= 1; // first case in case statement
            end case; 
            case (q == 11) q <= 1; // second case in case statement
            end case; 
            else q <<= 1; // default case in case statement
        end
endmodule
