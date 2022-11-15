// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge slowena)
    if (reset)
    begin
        q <= 0;
    end
    else if (~slowena)
    begin
        q <= (slowena ? q + 1 : q);
    end
end

module count_fast(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge slowena)
    if (reset)
    begin
        q <= 0;
    end
    else if (~slowena)
    begin
        q <= (slowena ? qendmodule
