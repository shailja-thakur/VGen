// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Otherwise, de-assert the output q until the ena input is high.

// Remember to set the reset value to 0 when simulating

// Please fill in the implementation here:
reg [3:0] q_temp;
reg temp_reset;

always @(posedge (clk))
begin
if (reset)
	q <= 0;
	end
else if (slowena) begin
	if (~temp_reset)
	begin
	q <= q_temp;
	temp_reset <= 1;
	end
	else if (q_temp==9)
	begin
	temp_reset <= 0;
	q <= q_temp;
	end
	else
	begin
	q <= q_temp+1;
	temp_reset <= 0;
	end
end

endmodule
