// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk, posedge reset)
begin
	if (reset)
	begin
	q <= 4'b0;
	end
	else
	begin
	if (~slowena)
	// When set slowena = 0 q is reset to 0
	begin
	q <= 4'b0;
	end
	else
	if (q == 4'd9 && slowena)
	// When reached q = 9 and ena = 1 q is incremented to 0
	begin
	q <= 4'b0;
	end
	else
	// In all other cases q = q + 1
	begin
	q <= q + 4'b0000_0001; 
	end
	end
end
endmodule
