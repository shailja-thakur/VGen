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
	assign r_next = reinitq ? 5'h1 : (feedback_value ? r_reg ^ {q[3], q[4], q[5] ^ q[4], q[5], q[4] ^ q[3] } : r_reg);
generate
if (SEL==1) begin always @(posedge clk)
	if (reset || reinitq) r_reg <= 5'h1;
	else	 r_reg <= r_next;
end else begin always @(posedge clk)
	if (reset || reinitq) r_reg <= 5'h1;
	else	 r_reg <= 5'h0;
end
endgenerate
endmodule
