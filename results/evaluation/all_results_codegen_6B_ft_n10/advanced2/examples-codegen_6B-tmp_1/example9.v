// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
	
always @(posedge clk or posedge reset) begin
	if (reset) q=0;
	else if(slowena) begin
	if (q == 9)
	
	// If the counter is maxed out, reset it to 0.
	// I don't see a more effecient way to do this with a clocked always block.
	
	q=0;
	
	else
	
	// Otherwise, increment by 1.
	// In this problem, a procedural block is more effecient.
	q=q+1;
	end
end

endmodule
