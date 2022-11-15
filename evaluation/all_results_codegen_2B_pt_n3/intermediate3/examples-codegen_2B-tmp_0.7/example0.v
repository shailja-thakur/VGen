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
always @(end of reset or clk)
    begin 
        r_reg <= (r_reg + 1) & 0xE3;
        if (r_reg == 0)
            r_next <= 1'b1;
        else
            r_next <= r_reg & 0x1;
        feedback_value <= (r_reg & 0x1) xor (r_next >> 3) & 0x4;
        q <= feedback_value xor (r_next >> 2) & 0x2;
    end
endmodule
