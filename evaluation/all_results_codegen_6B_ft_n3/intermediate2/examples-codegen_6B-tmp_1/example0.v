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
	if(reset)
	begin
	q	<= 4'd0;
	end
	
	//Case that only occurs when Q == 12...
	else if(q == 4'd12)
	begin
	q	<= 4'd0;
	end
	
	//If the counter hasn't reached the desired maximum value of 13, increment q.
	else
	begin
	q	<= q+1;
	end
	
	//This case only occurs when the user is trying to reset the counter to 0.
	if(reset)
	begin
	q	<= 4'd0;
	end
	
	end
endmodule
