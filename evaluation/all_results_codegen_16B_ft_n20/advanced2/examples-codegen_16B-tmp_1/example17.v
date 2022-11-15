// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk)
begin
	if (reset)
	begin
 
	//if (clk)
 
	//else
	begin
 
 
	if (reset&&!slowena)
 
	 
	begin
 
	q[3] <= 1'b0;
	q[2] <= 1'b0;
	q[1] <= 1'b0;
	q[0] <= 1'b0;
 
 
 
	end
 
	else if (slowena && q[3]!=1 && q[2]!=1 && q[1]!=1 && q[0]!=1)
	begin
	
	if (q[0]<= 4)
	begin
	q[0] <= q[0] + 1;
	q[end
end
end
end
end
endmodule
