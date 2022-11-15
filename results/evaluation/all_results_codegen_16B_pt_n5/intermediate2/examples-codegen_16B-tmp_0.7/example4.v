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
always @(posedge clk or posedge reset) begin 
    if (reset == 1) begin 
        q <= 1; 
    end else begin 
        if (q == 12) q <= 1; 
        else q <= q + 1; 
    end 
end 
// write the output bit b to the output
always @(posedge clk) begin 
    if (q == 1) q <= 2; 
    if (q == 2) q <= 3; 
    if (q == 3) q <= 4; 
    if (q == 4) q <= 5; 
    if (q == 5) q <= 6; 
    if (q == 6) q <= 7; 
    if (q == 7) q <= 8; 
    if (q == 8) q <= 9; 
    if (q == 9)end
endmodule
