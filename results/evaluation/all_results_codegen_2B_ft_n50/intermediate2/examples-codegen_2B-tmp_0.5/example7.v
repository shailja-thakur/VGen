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
	if (reset) 
	begin
	q <= 4'd1; // on reset, assign q to 1
	end
	else if (q == 4'd12) // if q is 12, assign q to 1
	begin
	q <= 4'd1; // assign q to 1
	end
	else
	begin
	q <= q + 1; // increment q
	end
end
endmodule
