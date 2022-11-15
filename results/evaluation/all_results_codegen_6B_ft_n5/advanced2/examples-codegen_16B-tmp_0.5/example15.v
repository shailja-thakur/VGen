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
	// when reset is high, set q to 0
	q <= 4'b0;
	end
	else begin
	// when reset is low or when ena is low, do not change the value of q
	if (slowena) begin
	if (q < 4'b1001) begin
	// when ena is high and q is less than 9, increment q
	q <= q + 4'b0001;
	end
	else begin
	// when ena is high and q is 9, set q to 0
	q <= 4'b0;
	end
	end
	end
end
endmodule
