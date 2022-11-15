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
// whenever a posedge is detected on the input `clk' then reset will hold the current value of q
//and then incremented on the next positive edges of `clk'.
/*always @(posedge clk or negedge reset)
begin
	if( reset == 0)
	begin
	q<= 4'b1; 
	end
	else
	begin
	if(q== 4'b12)
	q<= 4'b1;
	end	
end*/
/*always @(negedge clk or posedge reset)
begin
if(reset == 0)
q<= 4'b1;
else
if(q == 4'b12)
q<= 4'b1;
end
end*/
//useful blocking assignments
always @(posedge clk or negedge reset)
begin
	if(endmodule
