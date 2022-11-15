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
always @(posedge clk )//positive edge triggered
begin
	if(reset) // on reset or if q == 12...(specifically the 12th)
	begin	
	q = 0; //this is our defining an output q=0
	end
	else if (q==12) //if q is 12...
	begin
	q = 0; // set it to 0
	end
	else //all other times keep q=q+1
	begin
	q = q + 1;
	end
end 
endmodule
