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
always(clk or reset) begin
    r_next <= r_reg;
    if (reset) r_next = 0;
    else r_reg <= r_next;
    r_reg[3] <= r_next[3];
    r_reg[2] <= r_next[2];
    r_reg[1] <= r_next[1];
    if (((r_reg[0] & 0b0100010) == 0b0100010) and ((r_next[0] & 0b0100010) == 0b0100010)) {
        feedback_value = r_reg[0] & 0b00001000;
    } else {
        feedback_value = r_next[0];
    }
    q <= feedback_value;
end
endmodule
