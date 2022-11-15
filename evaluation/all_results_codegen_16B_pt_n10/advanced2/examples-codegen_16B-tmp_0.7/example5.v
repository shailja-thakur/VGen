// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or ~reset) begin
    if (~reset) q <= {0, 3, 6, 9};
    else if (slowena && q < 9) q <= q + 1;
end

// The following implementation is slow.
// The above algorithm should be implemented using a counter module.
always @(posedge clk or ~reset) begin
    if (~reset) q <= {0, 3, 6, 9};
    else if (slowena) q <= q + 1;
end

endmodule
