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
if (reset) 
	q <= 4'b0;
else begin
	if (slowena == 1'b1) begin
	// Note that this only changes the value of q if ena is 1 *and* the current value of q is less than 9.
	if (q <9)
	begin
	q <= q + 1'b1;	
	end 
	// Otherwise, q stays at 9
	end
	else begin
	// If ena is 0 do nothing
	q <= q;
	end 
end
end
endmodule
