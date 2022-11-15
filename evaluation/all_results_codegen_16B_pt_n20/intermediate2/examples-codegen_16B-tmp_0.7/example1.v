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
always @(posedge clk or negedge reset) begin
    if(reset)
	q <= 0;
    else if(q==12)
	q <= 1;
    else
	q <= q + 1;
end
// define q as a char, since it's a bit array
char q = '0';
// assign q to the correct char in the string
assign q = q[3:0];
// print out the value of q
// Note that the print statement must be outside the always block
// to avoid a race condition.
$display q;
endmodule
