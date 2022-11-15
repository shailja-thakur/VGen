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
	if (reset) begin
	// if reset is high, then the output should be 0
	q <= 4'b0;
	end
	else begin
	// if reset is low, then the output should be 1
	q <= 4'b1;
	end
	// if the ena input is high and the current value q is 9, then set q back to 0
	if (slowena && q == 4'd9) begin
	q <= 4'b0;
	end
	// if the ena is low, then increment the counter and then set it back to 1
	if (!slowena) begin
	q <= q + 4'b1;
	q <= 4'b1;
	end
end

endmodule
