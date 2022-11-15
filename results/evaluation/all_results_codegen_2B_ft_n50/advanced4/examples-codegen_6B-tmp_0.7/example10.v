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


module print_state(input clk, input state_enum);
// output any state to the screen.

module print_all_states(input clk, input [63:0] data);
// output all the states to the screen.

module print_state_counter(input clk, input state_counter_enum);
// output the current state (counter) to the screen.

module print_state_bit(input clk, input state_bit_enum);
// output the current state (bit) to the screen.

// Read from a counter.  
// Reads the current state of the counter.

module print_state_bit_counter(input clk, input state_bit_counter_enum);
// output the current state (bit) to the screen.

module print_state_counter_zero(input clk, input state_counter_zero_endmodule
