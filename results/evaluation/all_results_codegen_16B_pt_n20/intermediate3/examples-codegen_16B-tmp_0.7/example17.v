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
assign q = {
    (r_reg == 0b00000100'00001010),
    (r_reg == 0b00000100'00000110),
    (r_reg == 0b00000100'00000011),
    (r_reg == 0b00000100'00000100),
    (r_reg == 0b00000100'00000010)
};
lfsr logic( 
    input clk,
    input reset,
    input [4:0] x,
    output [4:0] q
);
reg [4:0] r;
// on reset set r to 1
// otherwise assign r to x
// assign the xor of bit positions 2 and 4 of r to feedback_value
// assign feedback concatenated with 4 most significant bits of r to r
// assign r to the output q
assign q = {
endmodule
