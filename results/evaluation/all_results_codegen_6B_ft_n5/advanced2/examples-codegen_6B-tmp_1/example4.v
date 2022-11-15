// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//
always @(posedge clk or posedge reset) begin
	if (reset) q = 0;
	else case ({enable, slowena}) // case expression is a concatenation
	2'b01: if (q == 4'd9) q = 4'd0; else q = q + 1; // Concatenate on the next positive edge of the clock
	// The 2 expression are concatenations.
	2'b10: if (q == 4'd9) q = 4'd0; else q = q + 2;
	default: q = 4'd0; // Shouldn't happen because q<=4'd0.
	endcase // caseendcase
end // always@

end
endmodule
