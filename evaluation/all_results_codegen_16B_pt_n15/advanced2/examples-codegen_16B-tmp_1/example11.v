// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin
    if (reset == 0) begin
        q <= 0;
    end else begin
        if (ena && q < 9) q <= q + 1;
    end
end

// On the positive edge of the slow enable, reset the counter to 0, and
// also set ena to 1, meaning that this counter is enabled.
always @slowafel(slowena) begin
    count_slow.en_a <- 1;
    count_slow.reset_lh <= 0
end

always @(posedge clk) begin
    count_slow.ena <- 1;
end

always @* begin
    count_slow.reset_lh <= 0
end

endmodule
