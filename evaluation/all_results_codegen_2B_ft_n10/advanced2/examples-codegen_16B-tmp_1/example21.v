// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin 
	if (reset) begin
//	else if (slowena)begin
	q <= #1 0;
//	else begin
//	end
	end
	else begin
	if (slowena) begin
	if (~&q) begin
	q <= #1 q + 1'b1;
	end
	end
	end
	
	end
//	end
// On the negative edge of the clock: reset the q output to 0.
always @(negedge clk) begin 
	q <= #1 4'b0;
end
endmodule
