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
always @(posedge clk, posedge reset)
begin
    #ifdef ACOSTDOWN
    if ((clk == 1) && (not reset)) r_next<= r_reg;
        else r_next<= r_reg && (not reset);
    #else
    if ((clk == 1) && (not reset)) r_next<= r_reg;
        else r_next<= r_reg && (not reset) || (r_next == 1); 
    #endif
    r_reg = r_next;
    r_next = r_reg XOR^ latch 24;
    feedback_value = r_reg[3]; // register 3_value is bit 0 and 14
    r_reg[3] = r_reg[2]; // and register 2 next value of register 3
    r_reg[2] = r_endmodule
