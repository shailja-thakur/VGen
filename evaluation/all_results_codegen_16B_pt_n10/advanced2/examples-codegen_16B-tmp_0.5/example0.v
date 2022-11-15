// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or posedge reset) begin
    if (reset) q <= 0;
    else if (slowena && q < 9) q <= q + 1;
end

// On the falling edge of the clock:
// if slowena is high, increment q.
// Otherwise, only increment q if q is not 9.

always @(posedge clk or posedge reset) begin
    if (slowena) q <= q + 1;
    else if (q < 9) q <= q + 1;
end

// On the rising edge of the clock:
// if slowena is high, reset q to 0.
// Otherwise, only reset q if q is 9.

always @(posedge clk or posedge reset) begin
    if (slowena) q <= 0;
    else if (q == 9) q <= 0;
end
endmodule
