// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or negedge reset) begin
	if (reset == 1'b0) begin
	// when reset is low, set q to 0
	q <= 4'd0;
	end
	else begin
	// when reset is high, increment the count only if slowena is high
	if (slowena == 1'b1) begin
	if (q == 4'd9) begin
	// when q is 9, reset q to 0
	q <= 4'd0;
	end
	else begin
	// otherwise increment q
	q <= q + 4'd1;
	end
	end
	end
end
endmodule
