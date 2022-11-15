// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk) begin
	if (reset | ~slowena)
	begin
	q = 4'b0111;
	end
	else if (~reset && q == 4'b0111 && slowena)
	begin
	// if q is 9, and if the enable is positive, set q to 0101
	q <= 4'b0101; 
	
	end
	else if (~reset && q == 4'b0101 && slowena)
	begin
	// if q is 0101 and enable is not active, reset the counter
	q = 4'b0111; 
	
	end
	else
	begin
	q = q + 1;
	end
end

endmodule
