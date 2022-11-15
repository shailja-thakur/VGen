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
always@(posedge clk or reset) 
begin 
	if (reset) 
	begin 
// how do i report an error here? 
// i have found which always block doesnt run. copying q to 0? 
// what about an infinite loop if i copy q to 1? 
// ugly codes: int q_big = q[3]; int q_already_12 = 0; 
// and clk = 0 is big enough to get into this block? 
// there's code here but i have no idea how and why it works 
	q <= 4'h1;
// the follow code will only run once per time step, and only if q is equal to 12 
// i am using a timing check above the reset check, but maybe i need another update 
	if(q_big == 1) 
	begin 
	// ensure q hasn'tend
end
end
endmodule
