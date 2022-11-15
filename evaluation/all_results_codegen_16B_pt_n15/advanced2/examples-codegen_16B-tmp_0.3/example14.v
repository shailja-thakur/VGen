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
// Otherwise, only decrement the output q if the ena input is high and q is not 0.

always @(posedge clk or negedge reset) begin
    if (reset)
        q <= 9'd0;
    else if (slowena && q != 9'd9)
        q <= q + 1'd1;
    else if (slowena && q != 0'd0)
        q <= q - 1'd1;
end

always @(posedge clk or negedge reset) begin
    if (reset)
        q <= 9'd9;
    else if (slowena && q != 9'd0)
        q <= q + 1'd1;
    else if (slowena && q != 0'd0)
        q <=end
endmodule
