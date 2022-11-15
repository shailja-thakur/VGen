// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge reset)
begin

if (reset == 1'b0) // Active low
	q <= 4'b0000; // Reset to all 0s

else if (slowena) // Active low
	begin
	if (q == 4'd9)
	q <= 4'b0000; // In this case, the same thing happens as in the previous rule, except that q gets reset to all 0s
	else
	q <= q + 1'b1; // Increment q
	end
end

endmodule
