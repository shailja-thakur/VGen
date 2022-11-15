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
assign feedback_value = if((reset='0') | xor(r_reg[10], r_reg[3]))
    '00000000'
  else
    xor(r_reg[0], r_reg[2])
    if((r_reg[11] == 1) | ((r_reg[0] & 0b00000010) == 0b00000010)) r_next = r_reg
  assign(q) = r_next;
endmodule
