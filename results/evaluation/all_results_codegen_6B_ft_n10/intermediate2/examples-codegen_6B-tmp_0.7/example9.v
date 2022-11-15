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
	if(reset) // on reset
	q <= 4'b0001;
	else if(q == 12'bzzzz_zzzz_zzzz_zzzz) // if q is 16'hffff, set it to 4'b0001
	q <= 4'b0001;
	else if(q[3:0] == 4'b1010) // if q is 12'bzzzz_zzzz_zzzz_zzzz, then set it to 4'b0001
	q <= 4'b0001;
	else 
	begin
	if(~q[3:0] & q[3:1] == 4'b0001) // if q1 is 0, then set q to 4'b0001
	q[3:0] <= 4'b0001;
	else 
	end
end
endmodule
