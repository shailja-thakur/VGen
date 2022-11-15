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
	// when posedge reaches 0 - this works for all clocking end values below
	begin
	begin
	q <= 4'd0;
	end
	
	// for not clocks, this will cover all cases
	else if (!slowena || q >= 4'd9)
	begin
	q <= 4'd0;
	end
	// when posedge doesn't reach 0, but goes high low
	else if (slowena || q == 0)
	q <= q + 4'd1;
	// so it increments every clock edge
	else
	q <= q;
	

	end
	
	
	
end


endmodule
