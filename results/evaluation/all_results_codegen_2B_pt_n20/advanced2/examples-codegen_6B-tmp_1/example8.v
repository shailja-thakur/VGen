// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// When the output q is 9, recheck the slowena to determine whether to reset it to 0 or 10.

	always @(posedge clk or posedge reset)
	begin
	
	if(reset)
	begin
	
	//if(slowena)
	//begin
	
	q<=0;
	
	end
	
	else if(slowena)
	begin
	
	if(q == 9)
	begin
	
	//if(slowena)
	//begin
	
	q<=0;
	
	end
	
	else
	begin
	
	if(~q[0])
	begin
	
	q[0]<=1;
	q[1]<=0;
	q[2]<=0;
	q[3]<=0;
end
end
end
end
endmodule
