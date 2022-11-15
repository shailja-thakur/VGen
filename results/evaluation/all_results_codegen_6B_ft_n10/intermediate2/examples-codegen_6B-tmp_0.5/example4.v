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
always @(posedge clk or posedge reset)
begin
	if (reset) // if the reset button is pressed, q=0
	begin
	q <= 0;
	end
	else if (q == 12) // if q is 12, set it to 0
	begin
	q <= 0;
	end
	else // if q is not 12, increment q by 1
	begin
	q <= q +1;
	end
end
endmodule
