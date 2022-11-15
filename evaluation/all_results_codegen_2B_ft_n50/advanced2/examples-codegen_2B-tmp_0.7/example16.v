// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the ena input is low, output q is simply incremented (if necessary), and q is
// reset to 9.

// If the reset is low, and the ena is high, do nothing.
// If the reset is low, and the ena is low, output q is simply incremented.

always @(posedge clk)
begin
	if (reset)
	begin
	
	q <= 0;
	end
	else if(slowena)
	begin
	if (q == 9)
	begin
	q <= 0;
	end
	else if(q == 0)
	begin
	q <= 9;
	end
	else if(slowena)
	begin
	q <= q + 1;
	end
	end
end

endmodule
