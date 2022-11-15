// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge reset) //Note that we're not using the ternary b/c we're sure to need it.
begin
	if (slowena) begin //same as if (ena) begin
	if (reset) q <= 4'b0; //again, same as if (q) begin
	
	else if (q == 9'b1111_1001) //The output is incremented when it reaches 9.
	
	q = 4'b0;
	
	else begin //allows the output to be incremented
	q = q + 1'b1;
	end
	
	end //end of if (slowena) begin
	
end //end of always @(posedge clk or negedge reset)

endmodule
