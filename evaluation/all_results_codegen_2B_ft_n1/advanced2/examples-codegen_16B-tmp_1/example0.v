// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk)
begin
if (reset)
q <= 4'b0;
else begin
if (slowena)
if (q < 4'b1001)
q <= q + 4'b0001;
end
end

// On the falling edge of the ena input, if the q reached 9, set the output q to 4'b0.
// Otherwise, set the output q to the previous value of the q.

always @(negedge slowly)
begin
if (q == 4'b1001)
assign q = 4'b0;
else
assign q = slowpoke;
end

endmodule
