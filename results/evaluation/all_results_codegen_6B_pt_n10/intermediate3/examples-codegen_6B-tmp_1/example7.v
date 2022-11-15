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

ufunction setup( 
  input clk,
  output reset,
  output q
) {
  ASSIGN_globals(clk, reset, q);
  assign r_next = r_reg[4:0] | ((4 (ufunction) r_reg[3:0]) << 4);
  assign r_reg = (7 (ufunction) r_reg[4:0]) & 
                (15 (ufunction) r_reg[2:0] << 4);
  ASSIGN_feedback(clk, reset, q);
  ASSIGN_concatenate(r_next, 4, feedback_value, 4);
  ASSIGN_assign(r_next, 4, r_reg, 4, q);
}

syn_module( cubic_lfsr(3,0) );
main( 
    endmodule
