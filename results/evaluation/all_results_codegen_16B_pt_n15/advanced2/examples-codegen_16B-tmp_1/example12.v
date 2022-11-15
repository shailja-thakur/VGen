// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk)
    if (reset == 1)
        q <= 0;
    else if (!reset && !$display("fastena") && slowena == 1 && q != 9)
        q = q + 1;

// On the positive edge of slowena (usually 400ns) the decorator
// will translate q to a string of 3 characters, meaning [0:2].

assign [3:0] d = {0, 1, 2, 3, 4};
assign [7:0] qa = {3, 2, 1, 0, 0, 0};


1:   // always
    count_slow(clk, $display("fastena"), $display("reset"), q);
endmodule
