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

	if(reset) //if reset
	begin
	
	q <= 4'b0000; // else set to 0
	
	end
	else	//else if not reset
	begin
	
	if(slowena) // if slowena
	begin
	
	if(q == 4'd9) q <= 4'b0000; // If q is 9
	
	else q <= q + 1'b1; // else increment q
	
	end
	else //if not slowena
	begin
	
	q <= q; // In any other case, do not change q
	
	end
	
	end
	
end

endmodule