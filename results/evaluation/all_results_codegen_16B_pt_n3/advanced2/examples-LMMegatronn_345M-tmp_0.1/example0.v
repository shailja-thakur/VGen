// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The output is forced to 0 at which point the incrementing the counter.

reg [3:0] q_next;

always @(posedge clk, posedge reset)
begin
    if(reset)
        q_next <= 0;
    else
        q_next <= q_next + 1;
end

always @*
begin
    if(slowena)
        q = q_next;
end

endmodule
