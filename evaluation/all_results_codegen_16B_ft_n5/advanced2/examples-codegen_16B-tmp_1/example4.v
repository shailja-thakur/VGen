// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

initial begin
	q = 0;
end

always @(posedge clk) begin
	if (reset || !slowena) begin
	// if reset is active or slowena is inactive, output q to be reset to 0
	// otherwise increment unless q is 9, at which point "q <9 " is true
	// and the output will be left unchanged
	end else if (~|q || q == 9) begin
	// the output will be clocked and the q register incremented every
	// time the output is inactive and the | operator is true or q is 9
	q = q + 1;
	end
end

endmodule
