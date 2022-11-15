// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// This determines if the output q should be 'on', or 'off'.
reg [3:0] qoutput;

always @(posedge clk) begin 
	case ({slowena, qoutput}){
	2'b00:	qoutput <= 0;	 // If reset is low, let the output q be 0
	2'b01:	qoutput <= qoutput+1; // If reset is High, increment the output q
	2'b10:	qoutput <= 4'b1; // ignore the input, and always output 'on'
	2'b11:	qoutput <= qoutput+1; // If reset is highs, increment the output q
	default: qoutput <= qoutput; // else, no change
	endcase

end

endmodule
