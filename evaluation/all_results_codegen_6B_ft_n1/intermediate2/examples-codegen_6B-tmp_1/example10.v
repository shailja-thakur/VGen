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
always @(posedge clk)
begin 
    if (reset) begin //On reset
	q <= 1;
    else if (q == 12) begin // ow, q equals 12
	q <= 1;
    else begin // otherwise q is clamped
	q <= q + 1;
end
end

*/

#include <xcopy.h>

int main()
{
	int i;

// reset is active low
	WRITE(obj[rst], 0);
	for (i=0; i<=12; i++)
	{
		/* Reset sequence */
		/* Low -> Leftmost Q -> Receiving PWM */
		/* Clear sedge of last bit to discharge the lifeline */
		/* High -> Leftmost Q -> Sending PWM */
		/* Clear sedge of last bit to discharge the lifeline */
		SET(endmodule
