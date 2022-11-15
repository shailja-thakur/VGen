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
always @(posedge clock)
    r_reg <= (r_next =   
        (1'b00
            (idx_of_LFSR(2) == bit(4) ? 1'b00 :
            idx_of_LFSR(2) == bit(5) ? 1'b00 :
            idx_of_LFSR(3) == bit(4) ? 1'b00 :
            idx_of_LFSR(3) == bit(5) ? 1'b00 :
            idx_of_LFSR(4) == bit(4) ? 1'b00 : 0'b00)
            & idx_of_LFSR(4) == bit(5) ? 
            1'b01 :
            1'b10
        )
    )]
    feedback_value <= rendmodule
