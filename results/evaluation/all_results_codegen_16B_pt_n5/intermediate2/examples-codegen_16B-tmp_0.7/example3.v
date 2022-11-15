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
always @(posedge clk or negedge reset) begin
    if (reset == 0) q <= 1;
    else if (q == 12) q <= 1;
    else q <= q + 1;
end
// find the value of q for 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12
// and assign it to q0
assign q0 = (q == 1) ? 1 : (q == 2) ? 2 : (q == 3) ? 3 :
            (q == 4) ? 4 : (q == 5) ? 5 : (q == 6) ? 6 :
            (q == 7) ? 7 : (q == 8) ? 8 : (q == 9) ? 9 :
            (q == 10) ? 10 : (q == 11) ? 11 : 12;
// find the value of q for 13endmodule
