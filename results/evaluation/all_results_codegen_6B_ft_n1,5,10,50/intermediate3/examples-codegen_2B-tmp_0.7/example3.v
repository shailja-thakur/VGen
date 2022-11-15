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
// update r_next to the next output value
always @(posedge clk) begin
    r_reg = r_reg << 1;
    r_next = r_reg;
    r_reg = (r_reg << 1) | (r_reg.bit(2) ^ r_reg.bit(4));
    r_next = r_next | (r_reg.bit(0) ^ r_reg.bit(1));
    if (reset) r_reg = 0b11;
    feedback_value = r_reg ^ r_next;
    q = r_next;
end
end
)

// Design a 4-bit Galois LFSR with taps at bit positions 3 and 1
module lfsr_sat( 
    input clk,
    input reset,
    output [4:0] q
); 
regendmodule
