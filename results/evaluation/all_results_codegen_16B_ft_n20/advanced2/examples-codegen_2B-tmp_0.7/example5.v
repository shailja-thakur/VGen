// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk)
begin
	if (reset)
	begin
	q <= 0;
	end
	else if (slowena == 1'b1)
	begin
	if (q == 4'b1001)
	q <= 4'b0000;
	else
	q <= q + 1;
	end
	else if (q == 4'b0000)
	q <= 4'b0000;
end
endmodule
