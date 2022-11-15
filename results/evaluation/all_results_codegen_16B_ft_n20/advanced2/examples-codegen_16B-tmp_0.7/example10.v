// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @ (posedge clk)
begin
	if (~reset) begin
	
	q <= #1 4'h0;
	end
// Otherwise, if ena is high and q is not 9
// then increment the output
	else if (slowena && q < 9) begin
	q <= #1 q + 1'b1;
	end
// Otherwise, do not change the value of q
	else begin
	end
end

endmodule
