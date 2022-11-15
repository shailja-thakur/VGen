// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
always @(posedge clk) begin
	if (reset) r_reg <= {5{1'b1}}; // reset to all 1's
	else
	begin	
	if(please_feedback)
	begin	
	// assign the feedback to the output reg
	r_reg <= {r_reg[3:0], feedback_value}; 
	end
	else r_reg <= r_next;
	end
end
// concatenate the MSB's of r_reg and r_reg[3:0] and feed to the mux
// next is the MSB's concatenated with the value of r_reg[3:0]
// for the lfsr module 

// assign the output q to the output of the module
assign q = r_reg;
endmodule
