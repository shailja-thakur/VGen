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


// synchronous load
// load: shift register load.
// ena: shift register enable.
// amount: shift register amount.


// the shift register is implemented as a flip-flop.
// the data is shifted into the flip-flop when it is enabled.
// the flip-flop is clocked by rising edge of clk, and is latched on the rising edge of load.
// the value of the flip-flop is shifted to the register.
// the flip-flop is reset on the falling edge of load.
// the flip-flop is clocked by rising edge of load.
// 
// the register is clocked by rising edge of load.
// the register is loaded on the falling edge of load.
// 
// the register is latched on the rising edge of load.
// the register is latched on the falling edge of load.
//endmodule
