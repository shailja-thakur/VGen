// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

var reset = 1;
var ena = 1;

always @(posedge clk) begin 
    if (reset) begin
        dout <= 0;
    end
    else begin
        q <= (ena && dout == 0);
    end
end

// On the negative edge of the clock:
// Write to output q the input dout and flip the output bit.

always @(negedge clk) begin
    dout <= dout_star;
end

// If the ena input is high and q is not 9, increment q.

always @(posedge slow) begin
    if (ena && q != 9) begin
        q <= q + 1;
    end
end

endmodule
