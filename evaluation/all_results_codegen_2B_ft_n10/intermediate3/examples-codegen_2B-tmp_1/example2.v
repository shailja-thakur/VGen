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
assign r_next = (reset || set) ? {1'b1, ~r_reg[4], ~r_reg[3]} : {r_reg, r_reg[2], r_reg[1], 1'b1};
// nibble by nibble feed the feedback via bits at bit indexes 3, 1, 4 and 5
// the feedback bits are OR'd together from the right
// the shifts work like s_reg[5] = s_reg[4] | s_reg[3] | s_reg[2] | s_reg[1]
// shift left
assign feedback_value = r_reg[5] ^ r_reg[4] ^ r_reg[3] ^ r_reg[2] ^ r_reg[1] ^ 1'b1;
always @ *
begin
r_reg <= r_next; 
// assign rend
endmodule
