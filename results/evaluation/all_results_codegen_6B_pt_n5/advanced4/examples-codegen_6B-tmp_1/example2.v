// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.



// New function declarations for parallel objects.
//
// =================================================================================================
// =================================================================================================

// =================================================================================================

// conversion of Excel sheet to a list is a sequential process.

// The sheet has rows (in reverse order) that become the input stream
const int READ_INPUT_INIT_ADDR = 4;

// a connection of one an arithmetical shift register to another
const int READ_SHIFTS_CONN_ADDR = 4;

// a connection of one an treatment phase/ata bit to a parser (intended to be the ASCII entry input).
const int READ_INPUT_PARSE_HEAD_ADDR = 4;

// a connection of one an output phase/ata bit to a parser (intended to be the ASCII entry input).
const int READ_OUTPUT_PARSE_TAIL_ADDR = 4;

// aendmodule
