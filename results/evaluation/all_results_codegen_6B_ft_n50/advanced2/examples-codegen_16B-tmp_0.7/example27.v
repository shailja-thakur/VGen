// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always@(posedge clk)
begin
	if (reset)
	begin
	
	end
	else
	begin
	
	end
end

// On the negative edge of the clock:
// Set the output q to the next value, which is q plus 1.
// If the ena input is not high, set the output to 0.

always@(negedge clk) 
begin
	if (reset)
	begin
	
	end
	else
	begin
	
	end
end

endmodule
