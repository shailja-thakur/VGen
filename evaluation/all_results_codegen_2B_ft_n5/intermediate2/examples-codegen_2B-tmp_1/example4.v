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
always@(posedge clk, posedge reset) 
begin 
 if (reset) 
	q <= 4'h1;
 else 
	if(q==4'h12)
	q <= 4'h1;
	else 
	q <= q+4'h1;
end 
endmodule