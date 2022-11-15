// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//
// On the negative edge of the clock:
// if reset is high, reset the output q to 9. 
// Otherwise, only increment the output q if the ena input is high, q is not 9 and q is not 8.
//
// Note this is totally equivalent to just:
//     consumer
// 1. always support the highest value 9.
// 2. increment the q register on "any" edge

always @(posedge clk or negedge reset) begin
    if (reset) q <= 9'd0;
    else if (!(slowena && q++ == 9'd9)) q <= 9'd0;
    q <= q + 1'd1;
end

endmodule
