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
    if (reset) q <= 0;
    else if (ena) q <= q + 1;
end

// On the negative edge of the clock:
// if slowena is high and q is 0, output 1.
// Otherwise, output 0.
always @(posedge clk or ~(slowena && ~q)) begin
    if (slowena && q == 0) q <= 1;
    else q <= 0;
end

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only decrement the output q if the ena input is high and q is not 0.
always @(posedge clk or ~reset) begin
    if (reset) q <= 0;
    else if (ena) q <= q - 1;
end
endmodule
