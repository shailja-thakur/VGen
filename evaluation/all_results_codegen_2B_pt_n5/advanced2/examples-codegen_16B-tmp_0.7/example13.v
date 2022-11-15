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
q <= 4'b0;
else begin 
if (slowena) begin
if(q == 9)
q <= 4'b0;
else
q <= q + 1;
end
end
end

// On the negative edge of the clock, 
// reset the q output to 0.
// If the slowena input is not active then do nothing.

always @(negedge clk) begin
if (reset)
q <= 4'b0;
end 

endmodule
