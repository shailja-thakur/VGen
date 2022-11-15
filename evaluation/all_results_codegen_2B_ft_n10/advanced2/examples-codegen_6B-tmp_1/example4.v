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
	if(//reset is high, or 
	reset | (slowena&~q[3]&~q[2]&~q[1]&q[0] | ~reset&slowena&~q[3]&~q[2]&q[1]&q[0]) //if slowena is high or if the counter is being reset, then reset the output.
	begin
	q = 4'd0;
	end
	else if(slowena|reset) //if the counter is being incremented, then increment the counter.
	begin
	q = q + 1;
	end
	else 
	begin	
	q = q; //otherwise retain the value of the counter.
	end
end

endmodule
