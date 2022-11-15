// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The if and only if clauses are a product of boolean operators.

	always @(posedge clk or if (reset)
	begin
	
	if (slowena = 1 begin
	!!!: q = 4'b0000;
	end
	
	else if (slowena = 0 ----> dont do anything
	
	begin
	q = q + 1;
	end

	it'll crash if i change the output to have a literal string.
	
end
endmodule
