// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @ (posedge clk or posedge reset)
begin
	if(reset)
	begin
	// when reset is high, set output to 0
	q <= 4'd0;
	end
	else
	begin
	// when reset is low and the output is 9, set output to 0
	if(q == 4'd9)
	begin
	q <= 4'd0;
	end
	else
	begin
	// when reset is low and the output is 0, only increment the output if ena is high.
	if(slowena)
	begin
	q <= q + 4'd1;
	end
	else
	begin
	// when reset is low and the output is 0, do not change the output.
	q <= q;
	end
	end
end
end
endmodule
