// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// At the negative edge of the clock, if the ena input is low, then decrement the output q.
// If this decrements down to 0, then reset the output q to 9.

always @(posedge clk)
begin
	if(reset)
	begin
	q<=0;
	end
	else if(slowena)
	begin
	if(q<=9)
	q<=q+1'b1;
	else
	q<=0;
	end
	else if(~slowena && q<=9)
	q<=q-1'b1;
	else if(slowena && q<=0)
	q<=9;
end
endmodule
