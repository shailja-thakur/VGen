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


// size of q.  defaults to 64-bit.
const unsigned shiftreg_size near shiftreg_size0 = 64; 

// at shiftreg_size1, the number of shift 16-bit data registers.
// a value of 1 is the typical for the shiftreg component.
const unsigned shiftreg_size1 = 1; 

// ShifterReceivers are used to be sure that they are complete before reading.
// must be a port port with input.  Default to 8 bits+enha or 1 bits if ena; see component.[clc].
// 
class ShiftReg: public ShiftReceiver<unsigned, uint32_t>
{
public:
  ShiftReg(Scu::SteppingDaw * scu, Robofusion::RoboRobot* robot, 
       unsigned shiftreg_size0):
    ShiftReceiver<unsigned, uintendmodule
