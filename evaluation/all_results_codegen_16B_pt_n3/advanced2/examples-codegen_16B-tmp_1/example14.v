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
	if(reset)
	assign q <= 4'd0;
	else begin
	if(slowena)
	if(q !== 9'd9)
	begin
	q <= q + 3'd1;
	end
	end
end
// This always block is driven by the enable signal (or the activehigh of the reset signal)
// It will only execute on the rising edge of the clock
// Implement the assignment statements indicated in the problem statement
// Below code has been auto-generated...
always @(posedge clk) begin
	if(reset) begin
	q <= 4'd0;
	end
	else begin
	if(clk_activehigh_reg_142) begin
	q <= 4'd0;
	end
	else begin
	q <= q + 4'd1;
	end
	end
end
endmodule
