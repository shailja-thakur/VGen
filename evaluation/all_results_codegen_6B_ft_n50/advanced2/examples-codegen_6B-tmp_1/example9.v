// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or posedge reset or posedge slowena) 
	begin
	
	if (slowena == 1'b1) 
	begin
	
	if(reset == 1'b1) //A reset signal is made to test the changes in that affects other parts
	
	q <= 4'b0000;
	
	else if (q == 4'b1001) //the counter is set to 9
	
	q <= 4'b0000;
	
	else if (ena == 1'b1) //the counter is incremented if and only if the ena/slowena signals are high
	
	q <= q + 1'b1;
	
	end
	end
	
endmodule
