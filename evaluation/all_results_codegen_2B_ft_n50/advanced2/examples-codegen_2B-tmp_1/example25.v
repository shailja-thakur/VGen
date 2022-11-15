// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If reset and ena are both high, wait for the slowena signal then increment q.

always @(posedge clk)
	begin
	// You may use a single assign, or use two different always blocks.
	// There is no sorrow about dead code.
	
	if (reset)
	begin
	q <= 0;
	end
	
	else if (slowena && q < 4'b1001)
	q <= q + 1'b1; // You can put the increment operator in either front or back.
	
	else if (slowena && reset)
	q <= 4'b0000; // If another ena and reset, wait for ena.
	end // always

end
endmodule
