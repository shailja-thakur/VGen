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
	q = 1;
	else if (q == 12)
	q = 1;
	else if (q == 13)
	q = 1;
	else if (q == 14)
	q = 1;
	else if (q == 15)
	q = 1;
	else if (q == 16)
	q = 1;
	else if (q == 17)
	q = 1;
	else if (q == 18)
	q = 1;
	else if (q == 19)
	q = 1;
	else if (q == 20)
	q = 1;
	else if (q == 21)
	q = 1;
	else if (q == 22)
	q = 1;
	else if (q == 23)
	q = 1end
endmodule
