// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge reset) begin
    if (reset) q <= 0;
    else if (ena && q < 9) ++q;
end

// On the negative edge of slowena, count q up to 9.

always @(posedge slowena or negedge reset) begin
    if (reset) q <= 0;
    else if (ena && q > 0) --q;
end

// On the positive edge of the clock, reset q and ena to 0.

always @(posedge clk) begin
    if (reset) q <= 0;
    else { reset; ena <= 0; }
end

// On the negative edge of the slowena, reset q and ena to 0.

always @(posedge slowena) begin
    if (reset) q <= 0;
    else { resetend
endmodule
