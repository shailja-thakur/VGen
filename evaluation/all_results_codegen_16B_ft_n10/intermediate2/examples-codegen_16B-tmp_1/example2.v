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
always @(posedge clk) begin
 case ({resetn,q})
	{0,1} : 
	begin q = 2;
	end 
	{0,2} : 
	begin q = 3;
	end 
	{0,3} : 
	begin q = 4;
	end 
	{0,4} : 
	begin q = 5;
	end 
	{0,5} : 
	begin q = 6;
	end 
	{0,6} : 
	begin q = 7;
	end 
	{0,7} : 
	begin q = 8;
	end 
	{0,8} : 
	begin q = 9;
	end 
	{0,9} : 
	begin q = 10;
	end 
	{end
endmodule
