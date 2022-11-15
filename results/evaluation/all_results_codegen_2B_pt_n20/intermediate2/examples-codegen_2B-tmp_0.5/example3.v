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
// end if 
initial begin
    q = 0;
    if (reset == 1) begin
        q = 1;
    end
    if (clk == 1) begin
        q = q + 1;
        if (q == 12) q = 1;
    end
end
// This is a counter that counts from 1 to 12
module counter2( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
// end if 
initial begin
    q = 0;
    if (reset == 1) begin
        q = 1;
    end
    if (clk == 1) begin
        qend
end
endmodule
