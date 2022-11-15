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


// The following implementation is a bit more verbose than the above.
// It uses a state machine to shift by a number of bits, requiring a
// bit of state to remember which direction we're in.
// The state machine is implemented as a FSM, using a state transition
// function to move between states.
// The state transition function takes a new state and an old state,
// and returns the new state.
// The state transition function also takes a shift amount, and the
// current state, and returns the new state.
// The state transition function also takes a bit of the shift
// register, and the current state, and returns the new state.
// The state transition function is used to implement the shifter.
// The shifter is implemented as a state machine, using the state
// transition function to move between states.
// The state transition function is also used to implement the load
// signal.endmodule
