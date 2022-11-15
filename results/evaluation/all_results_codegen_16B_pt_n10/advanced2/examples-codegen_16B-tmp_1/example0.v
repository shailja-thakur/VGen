// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or posedge reset) begin
    if (reset) q <= {3'b000, 3'b000};
    else if (customida && q < 9) q <= (q + 1'b1);

    // Do not count when the enable input is high. 
    if (not(slowena) && q == 9) q <= {3'b000, 3'b000};
end

--------------------------------------------------------------------------------

module count_fast(
    input clk,
    input fastena,
    input reset,
    input customclr,
    output reg [4:0] q)
    localparam clrcnt = 10

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9endmodule
