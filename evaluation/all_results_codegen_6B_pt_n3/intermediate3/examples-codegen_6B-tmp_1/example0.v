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
always @(posedge clk or negedge reset)
// assign q = 4-bit calls and q = 5-bit feedback
if (reset) {
    r_reg <= 0;
    r_next <= 0;
    out_q <= to_int(if (bit1){1}{0} & if (bit3){1}{0} & if (bit5){1}{0});
} else assign r_next = (if (bit1){1}{0} & if (bit3){1}{0} ^ if (bit5){1}{0});
assign feedback_value = r_next[6:4];
endmodule
