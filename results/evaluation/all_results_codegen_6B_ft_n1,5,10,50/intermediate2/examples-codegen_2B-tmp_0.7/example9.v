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
wire [3:0] q;

initial begin
    q = 0;
    clk = 0;
    reset = 1;
end

// The top half of the counter
// This is a counter that counts from 12 to 1 according to the following cases:
// on reset, assign q to 12
// else if q is 0, assign q to 12
// else, increment q by 1 
wire [3:0] q1;

// The bottom half of the counter
// This is a counter that counts from 1 to 12 according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
wire [3:0] q2;

// The counter registers
// The counter is read and written directly to the registers
reg [3:0] r;
reg [3:0endmodule
