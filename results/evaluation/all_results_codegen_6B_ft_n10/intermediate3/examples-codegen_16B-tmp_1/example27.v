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
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
assign q = r_reg;
reset_dip reset
// even with 'r_reg' is instanciated before any of the gates, it is not initialized
// 'feedback' will never be used uninitialized because the output of the gate will throw an error
assign feedback = xor2(r_reg[2],r_reg[4]);
// NOTE: logic used in feedback leads to undefined value
assign r_next = r_reg ^ (feedback ^ xor2(r_reg[3], r_reg[0])); //display logic diagram of lfsr
always @(posedge clk) begin
	if (reset) begin
	r_reg <= 5'b10111;
	end // end if
	else begin
	r_reg <= r_next;
	end // end else
end // end always

// NOTE: feedback valueend
end
end
endmodule
