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
assign q = r_reg;
// follow the following state machine
// state 0 -> state 1 -> state 2 -> state 3 -> state 4 -> state 5 -> state 6 -> state 7 -> state 8
parameter state0 = 3'b000,
	state1 = 3'b001,
	state2 = 3'b010,
	state3 = 3'b011,
	state4 = 3'b100,
	state5 = 3'b101,
	state6 = 3'b110,
	state7 = 3'b111;
// define the next state as a function of current state and inputs
// q_bit_in is the concatenation of all q_bits
assign feedback_value = q_bit_in[2] ^ q_bit_in[4];
assign r_next = state0 == state ? r_reg : // state 0 -> stateendmodule
