// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 

always @ (posedge clk)

begin
	if (reset)
	// reset case
	begin
	// invalid values because reset could be 0
	// until there is a clock, numbers should be appended here
	q <= 4'b0000;
	end
	else if (q == 12)
	// maximum case
	begin
	/*
	if you keep this code with revision, activate the checker
	the code you can't understand will be checked, so good-bye
	*/
	q <= 4'b0000;
	end
	else
	// normal case
	begin
	q <= q + 1;
	end // flip-flop
end // block always begin

end
end
endmodule
