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
always @ (posedge clk) begin
	if (reset == 1'b1) begin 
	r_reg = 4'b0111;
	 end
	else begin 
	r_reg = r_next;
	 end
	end

 // compute r_next
assign r_next = (feedback_value == 1'b0) ? r_reg >> 1 : r_reg ^ r_reg >> 2;

assign q = r_reg[4:0];

// This version doesn't work because we can't take arithmetic practice ISIM model 
// assign q = (feedback_value == 1'b0) ? r_reg>>1 : r_reg ^ ((r_reg>>2) & (r_reg>>4));

endmodule
