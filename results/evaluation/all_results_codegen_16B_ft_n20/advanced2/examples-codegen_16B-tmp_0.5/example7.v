// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @ (posedge clk or posedge reset)
begin
	if (reset)
	begin
	// when reset is high, set output to 0. 
	q <= 4'd0;
	end
	else
	begin
	if (slowena && q < 4'd9)
	begin
	// when ena is high and q is less than 9, increment the output.
	q <= q + 4'd1;
	end
	else
	begin
	// when ena is low or q is 9, hold output at 9.
	q <= 4'd9;
	end
	end
end

endmodule
