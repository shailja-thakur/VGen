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
reg [12:0] state; 
assign q = state; 
always @(posedge clk or posedge reset) begin 
    if (reset == 0) begin
    case (state) /* from top to bottom: 
            0 = reset, 1 = default, 2 = 1, 3 = 2, 4 = 3, 5 = 4, 6 = 5, 
            7 = 6, 8 = 7, 9 = 8, 10 = 9, 11 = 10, */
        case (state == 12) // we reached the end, we stop here!
            q <= 1; 
        default // all other
            q <= state + 1; 
    end 
end		 
			 
			 
// display our counter value with an external LED 
always @(posedge clk or posedge reset) begin 
    if (reset == 0) begin
    ifend
end
endmodule
