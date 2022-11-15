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
    if (reset)
        q <= 0;
    else
        if (slowena && (q < 9))
            q <= q + 1;
end

// Always active low
assign slowena = 1'd0;

// Allow reset to start slowing everything down
assign reset = 1'd0;

// Tell the counter to off Have to use an if statement because clock does not propagate to immediates
always @(posedge clk) begin
                    output_slow: if (slowena) begin
            // Set the output counters to zero on the first clock
            q <= 0;
                    end
end

// Set the output counter on the
assign q[3:0] = 1;

endmodule
