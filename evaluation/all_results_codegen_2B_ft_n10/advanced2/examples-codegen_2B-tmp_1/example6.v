// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// For simulation, if you take drain_reg too low, it will be possible to change the output q even while the input powered.


always @(posedge clk) begin
if (~reset) begin
q <= 4'b0000;
end
else begin
if ((slowena && q != 4'b1001) || (taken && q == 4'b1001)) begin
if (slowrise) begin 
q <= q + 4'd1;
end
else begin
q <= q + 4'd1;
end
end
end

always @(posedge clk) begin
if (~reset) begin
taken <= 1'b0;
end
else begin
if (!slowena) begin
taken <= 1'b0;
end
else begin
if (taken && q == 4'b1001) begin
taken <= 1'b1;
end
end
end
end
end
endmodule
