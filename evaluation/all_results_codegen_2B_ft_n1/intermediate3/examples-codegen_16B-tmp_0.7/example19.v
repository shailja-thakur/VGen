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
assign r_next = (reset) ? 5'b00000 : (r_reg ^ (r_reg >> 2) ^ (r_reg >> 4));
assign q = r_reg;
assign feedback_value = r_reg[2] ^ r_reg[4];
assign clk_en = ~reset;
// instantiate a clk_divider module with 4 as the number of divisors
// create a clock divider module with 4 as the number of divisors
// assign the clock divider output to the module lfsr output
endmodule
