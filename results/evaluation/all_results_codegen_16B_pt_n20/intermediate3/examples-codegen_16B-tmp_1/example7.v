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
assign q = r_next[9];

// clkdassert fastcase here to very quickly stop a shift
assert(clk.clk == true)
reg [] clkdassert = 0;

Control-C to stop, F to go
sig @clk {
    // if clk == true, shift bit position 1 to bit position 0
    if (clk) r_reg[0] = !r_reg[1];
    // if clk == true, shift bit position 3 to bit position 2
    else r_reg[2] = !r_reg[3];
    // if r_reg[0] == r_reg[2] == 0 then update q with the bit position 1
    if (r_reg && (r_reg[0] == r_reg[2])) q = q ^ r_reg[1]; 
    endmodule
