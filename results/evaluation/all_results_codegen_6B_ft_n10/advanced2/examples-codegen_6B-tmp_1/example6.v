// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Since q is 4 bits, it rolls over from 65 to 0.

assign q = {q[2:0], reset}; 

always @(posedge clk) 
	begin	
	if(reset)
 	q <= 4'b0000; 
 	
	else if(slowena)
	if(q[3:0] < 4'b1010)	//set the counter to maxium value(1023) , when reached
	q <= q[3:0] + 4'b0001; 
	
	else
	q <= 4'b0000; //reset the counter when rolled
	end
endmodule
