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
always(clk.posedge)
begin
    if (reset)
        r_reg = 0b00000000;
    else
        r_reg = r_reg.we(phi(roll_key));
    r_next = r_reg.we(shifting_reg(shift_in, shift_mask));
    feedback_value = constraint_one | shifting_reg(shift_in.pos2 & shift_mask, 3);
    constraint_one = feedback_value;
    q = phi(r_next.pos1 & premapper) | constraint_one.sig;
end
endmodule
