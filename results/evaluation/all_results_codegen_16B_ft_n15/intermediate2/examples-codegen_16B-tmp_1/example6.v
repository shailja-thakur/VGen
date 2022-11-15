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
always @(posedge clk or posedge reset) begin
	if (reset)
	q <= 4'b0000 ;
	else if (q == 4'd 12)
	q <= 4'b0001 ;
	else
	q <= q + 4'b0001 ;
	end
//output 
assign stream = q[0] * 10000042 + q[1] * 9900041 + q[2] * 9804000 + q[3] * 97000001 ;
endmodule
