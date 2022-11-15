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
// on clock edge, output q.
// (exprting increment-cycle as (count-inc) has the property that count always has the same value but could have text"reset" or... "clk")
reg increment;
always@(posedge clk, posedge reset)
	begin
	if(reset == 1)
	 	q <= 4'b10000;
	else if(q == 4'b12)
	 	q <= 4'b1;
	else
	 	q <= q + 1'b1;
	end
always@(*)
	increment = (q == 4'b12);
endmodule
