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
    if (// reset is low and q is 1
        (reset == 1) && (q == 1)
        // or q is 13 and clock is up
        || (q == 6 && !clk) || 
         (q == 12 && !clk)
        // or q if incrementing 
        || (q < 12 
            // and clock is down
            && !clk)
       )
        q = 1;
    else if (q < 6)
        q = q +1;
end
// latch q on the falling edge of clock 
always @(negedge clk)
begin 
    if (clk && (q == 7) && (~reset))
        q = 2;
end 
end 
analogWrite(q, 0b110000); // 0b0000110/endmodule
