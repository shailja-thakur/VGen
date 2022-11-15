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
	 q <= 4'b0000;
	else begin
	if (slowena) begin //This may be incorrect, because comments refer to q as only changing when slowena changes
	 if (q == 4'b1001) 
	 	q <= 4'b0000;
	 else //Increment q if it is 2 digits away from 9.
	 begin
	 if(q == 4'b1110) 
	 	q <= 4'b0000;
	 else 
	 	q <= q + 1'b1;
	 end
	end 
	end

// Whenever the output q changes, set a flag.

always @(q)
	countQ[0] = q[0];

always @(posedge clk or posedge reset)
endmodule
