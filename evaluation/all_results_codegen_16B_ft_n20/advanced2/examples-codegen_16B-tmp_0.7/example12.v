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
	if(reset)
	begin
	q <= 0;
	end
	else
	begin	
	if(slowena && q < 9)
	begin
	q <= q + 1;
	end
	else
	begin
	q <= q;
	end
	end
end

// On the negative edge of the clock, always set the output to q
// If the reset or slowena inputs are high, q should be reset to 0.
// Otherwise, q should be set to the value of q on the positive edge of the clock.

always @(negedge clk)
begin
	if(reset)
	begin
	q <= 0;
	end
	else
	begin	
	if(slowena && q < 9)
	begin
	q <= q + 1;
	end
end
end
endmodule
