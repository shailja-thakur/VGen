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
	if (reset) //if (begin or end)
	 	q <= 1; //output 1 for simulation, which would be a circuit to display numbers from 1 to 10.
	else if (q == 12) //if q == 12 then
	 	q <= 1; //output the first number (q <= 0) 
	else if ( q != 12) // if q != 12, increment q 
	 	q <= q + 1; //increment the current value of q.
end
endmodule
