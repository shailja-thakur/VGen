// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Increment the variable a when the clock reaches its half-count value.
always @(posedge clk)
begin
	if(reset)
	begin
	q<=4'b0000; // reset case
	end
	else
	begin
	if (slowena && q<9)
	begin
	q<=q + 1;
	end
	else if (slowena &&q==10)
	begin
	q<=4'b0000;
	end
	end
end

endmodule
