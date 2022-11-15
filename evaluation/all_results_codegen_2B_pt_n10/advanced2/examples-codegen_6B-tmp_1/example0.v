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
 
	if(reset)
 	q <= #`CNT4'b0000 
 
	// If the slowena is asserted, then the counter increments, Otherwise it stays at the same value.
 	else if(slowena)
 	begin
 	if(q == #`CNT4'b1110)
 	q <= #`CNT4'b0000;
 	else else
 	q <= q + #`CNT4'b0001;
 	end
 
	end //always

 	
end
endmodule
