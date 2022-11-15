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
always @(posedge clk)
begin
    // The bitfield of this module is stored in the first 4 bits of r_reg
    if (reset) r_reg = 1'b00; else r_reg = r_reg << 1;
    // feedback_value is stored in the same 4 bits of r_reg
    // r_next is initially stored in r_reg
    // r_reg is incremented by one only when the value of feedback_value changes
    if (feedback_value == 0 || r_reg == r_reg << 1) {
        r_next = r_reg << 1;
    } else {
        r_next = r_reg >> 1;
    }
    // assign r_next to the output q
    q(r_next);
end
endmodule
