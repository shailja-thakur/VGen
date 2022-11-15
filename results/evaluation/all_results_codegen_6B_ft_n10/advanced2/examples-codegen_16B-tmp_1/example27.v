// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always@(posedge clk or posedge reset)
begin
	if (reset)
	begin
	// if the reset is active then ...
	// 0 should be used as the output instead of the default 9.
	q = 0;
	end

	else if (slowena)
	begin
	
	if (q < 9)
	begin
	// The output won't be reset when the slowena is high and q is below 9.
	q = q + 1;
	end
	end
end
endmodule
