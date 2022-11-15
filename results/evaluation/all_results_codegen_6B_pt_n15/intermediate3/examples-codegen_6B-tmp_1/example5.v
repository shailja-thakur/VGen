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
always(clk)
begin 
    if (reset)
      r_reg = 1;
    else
      conc.comb assign r_next = conc.ext(r_reg[5:0], c_bit[4]);
    feedback_value = conc.ext(r_reg[3:0], c_bit[4]);
    
    conc.comb assign r_reg = conc.ext(feedback_value, r_reg & c_bit[4]);
    r_reg[1:0] <= c_bit[2:0];
    r_reg[2:0] <= c_bit[3:0];
    r_reg[3:0] <= c_bit[4:0];
    
    r_next[6] <= c_bit[3:0];
    r_next[5] <= c_bit[end
endmodule
