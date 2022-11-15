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
// if reset is asserted, put q to 1
// if the reset or the clock change, reset the counter
always @(posedge clk, posedge reset)
begin
	if(reset)
	begin
	q <= 4'b0001;
	end
	else if(q==4'b12)
	begin
	q <= 4'b0001;
	end
	else
	begin
	q <= q+1;
	end
end
endmodule
