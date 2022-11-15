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
wire out;
assign out = q[2];
initial begin
    q = (1 << 3) | (1 << 1);
    out = 0;
    reset = 0;
    clk = 0;
end
end
`
endmodule