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
q = r_next;

// Initialize the register to 1
r_reg = 1;

// Logical shift right

// Assign r_next to r_reg
// Shift right by 1 bit
r_next = r_reg >> 1;
// If the most significant bit is a 1
// XOR bit position 2 of r_reg with bit position 3 of r_reg
r_next = r_next ^ (r_reg >> 3);
// Assign r_next concatenated with 4 most significant bits of r_reg to r_reg
r_reg = r_next << 3;
// Assign r_reg to the output q
q = r_reg;

// This is the feedback line
// Assign r_next to r_reg
r_next = r_reg;
// Shift left by 1 bit
r_next = r_next <<endmodule
