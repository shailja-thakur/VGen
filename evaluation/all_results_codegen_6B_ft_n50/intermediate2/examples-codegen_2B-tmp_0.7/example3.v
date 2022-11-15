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
// Note that q is clocked in the negative edge of the clock
always @(posedge clk)
begin
	if(reset)
	begin
// set q to 1
	q = 4'b0000;
	end
	else if (q == 4'b12)
	begin//if q is 12, set q to 1
	q = 4'b0000;
// else, increment q by 1 
	q = q + 1;
	end
	else
	begin//if q is 1, set q to 1
	q = 4'b0000;
	// else, increment q by 1 
	q = q + 1;
	end
end 
endmodule
