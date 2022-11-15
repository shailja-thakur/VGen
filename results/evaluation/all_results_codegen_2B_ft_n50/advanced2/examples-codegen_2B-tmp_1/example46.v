// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk)begin
	if (slowena == 1'b1 && reset == 1'b0) begin
	
	// At the positive edge of the slowen input pause the output q.
	q <= {q[2:0], 1'b0};

	// Allow the reset input to resume the output q after N cycles in the clock cycle.
	q <= {q[2:0], 1'b1};	
	
	end
	else if (slowena == 1'b1 && reset == 1'b1) begin
	q <= 'b0;
	end
end

endmodule
