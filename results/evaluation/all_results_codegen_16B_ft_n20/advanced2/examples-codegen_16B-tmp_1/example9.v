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
	// Add your code here
	if (reset==1'b1) begin
	// initialize case statement
	case(slowena)
	1'b0:
	begin
	// deasserted case: reset output to value 0
	q=4'b0000;
	end
	1'b1:
	begin
	// asserted case: only write if stalled
	if(q==4'b1001)begin
	// stalled // only write if stalled
	q=q<<1;
	end
	else begin
	// not stalled // retain value and increment
	q=q<<1;
	end
	endcase
	end
end

endmodule
