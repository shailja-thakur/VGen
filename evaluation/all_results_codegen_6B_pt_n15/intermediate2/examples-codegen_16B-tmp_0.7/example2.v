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
	begin
	// reset the counter
	q <= 4'b0000;
	// stop the counter from changing
	end
	else if (q == 12)
	begin
	// stop the counter from changing
	q <= 4'b0000;
	end
	else 
	begin
	// allow counter to continue counting
	q <= q + 1;
	// stop counter from changing
	end
end
endmodule
