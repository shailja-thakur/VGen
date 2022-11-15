// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The output q should never be decremented.

	always @(posedge clk) begin
//assert reset or slowena and (~q[3] | q[2] | q[1] & ena) and q[0] == 1'b0;
//assert reset or slowena and q[3] and q[2] and q[1] and q[0] == 1'b0;

	if(reset)
	begin
	q <= 0;
	end
	
	else begin
	if(slowena && ~q[3] | q[2] | q[1] & ena)
	q <= q + 4'd1;
	end

	end
	 
	// In VHDL the initial value of a wire should be known at compile time.
	// (it should be a value directly assigned at the time the module is
	endmodule
