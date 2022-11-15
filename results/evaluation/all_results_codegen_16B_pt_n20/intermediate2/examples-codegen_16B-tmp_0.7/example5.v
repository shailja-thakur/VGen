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
for (reg i = 0; i < 13; i = i+1) begin
    q <= i;
    if (i==13) q <= 1;
    if (clk==1 and (i==12 or i==13)) begin
        q <= i+1;
    end
    clk <= clk + 1;
end
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
for (reg i = 0; i < 13; i = i+1) begin
    q <= i;
    if (i==13) qend
endmodule
