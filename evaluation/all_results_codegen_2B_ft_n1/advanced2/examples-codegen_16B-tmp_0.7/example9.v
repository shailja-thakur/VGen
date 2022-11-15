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
	
	end else begin
	
	end
end

// On the negative edge of the clock, always set the output q to a value of 9.
always @(negedge clk) begin
	q = 4'b1001;
end

// On the positive edge of the slowena input, always set the output q to a value of 0.
always @(posedge slowena) begin
	q = 4'b0000;
end

endmodule
