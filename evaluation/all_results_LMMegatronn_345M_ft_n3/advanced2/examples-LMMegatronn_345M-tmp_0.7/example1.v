// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// When clk is not high, the output q and increment the output clock
// so q is always 0.
reg [3:0] q;

always @(posedge clk)
    q = q + 1'b1;

// If q is high, increment the output clock.
// Otherwise, set new data on every positive clock edge.

// On clk is low, the output q and increment the output clock.

always @(posedge clk)
    if (reset) begin
        q <= 0;
    end else begin
        q = q + 1'b1;
    end

endmodule
