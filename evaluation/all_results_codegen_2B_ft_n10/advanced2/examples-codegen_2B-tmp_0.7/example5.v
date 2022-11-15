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
	q <= 4'h0;
	end
	else
	begin
	if (slowena && q < 4'h9 && ~q[3])
	q <= q + 1;
	
	// This is the only way to reset the counter.
	// If reset is high, a positive edge of the clock
	// will clear the counter. 
	end
end

endmodule
