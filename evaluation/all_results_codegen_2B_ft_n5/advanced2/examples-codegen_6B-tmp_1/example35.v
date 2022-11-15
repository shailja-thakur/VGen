// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
	
always @(posedge clk or posedge reset)
begin
	if (reset) // if (reset) for structural modeling
	begin 
	q = 0;	// I'm declaring all of them to be 0, blankets and stars.
	end
	else if (slowena)
	begin
	if (q != 9) 	// I'm gonna have this make sure the counter doesn't count to 10.
	q = q + 1;
	// why are we going to do this instead of if(q == 9)?
	// because if it is an input I'm gonna have a random number for a while. 
	// This is owing to random in effect of the asycchronous reseting of the counter
	end
	
end	

endmodule
