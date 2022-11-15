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
if (slowena) begin
if (q == 4'd9)
q <= 4'b0;
else
q <= q + 1'b1;
end
end
end

// On the negative edge of the clock:
// if reset is high, reset the output q to 9. 
// Otherwise, only decrement the output q if the ena input is high and q is not 0.

always @(negedge clk)
begin
if (reset)
q <= 4'b9;
else begin
if (slowena) begin
if (q == 4'd0)
q <= 4'b9;
else
q <= q - 1'b1;
end
end
end

endmodule
