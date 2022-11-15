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
always(clk) {
    if (reset) q <= 1;
    else if (q == 12) q <= 1;
    else q <= q + 1;
}

module rlu( 
    input clk,
    input reset,
    output reg [3:0] q,
    output reg [7:6] r
); 
// assign q to 1 when reset is low and r is zero
// assign q to r when reset is low and r is not zero
// else assign q to q + 1
always(clk) {
    if (reset) {
        q <= 1;
        r <= 0;
    }
    else if (r == 0) {
        q <= q + 1;
    }
    else {
        q <= q + 1;
        r <= 1;
    }
}

module lut(
endmodule
