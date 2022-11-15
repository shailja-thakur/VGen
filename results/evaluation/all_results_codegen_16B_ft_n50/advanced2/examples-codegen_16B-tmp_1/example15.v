// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always@(posedge clk or posedge reset)
begin
	if (reset)
	begin
	//if reset is high, q will be set to 0 if it is currently not 2^4 - 1
	//this is done to ensure that the counter does not wrap around
	//and go to a value greater than 9
	q = 4'b0;
end
else
begin
	if (q == 9 & slowena == 1'b1)
	begin
	//if the ena input is high and the value is 9, then is will increment
	//to 0
	q = 4'b0;
	end
	else if (slowena)
	begin
	//if the ena is not high, then the count will not increment
	q = q + 1'b1;
	end
	else
	begin
	//otherwise the countend
end
end
endmodule
