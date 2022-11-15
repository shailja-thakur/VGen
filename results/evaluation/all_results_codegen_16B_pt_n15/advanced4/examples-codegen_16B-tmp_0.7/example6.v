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


// ###########################
// ##    Notation Units    ##
// ########################### 

// The loading of data from the register is performed by rising an edge on clk. 
// The clock is driven high, then data is loaded into the register, followed by a falling edge on clk.
// The rising edge on the clk is used for the load. 

// When the register is written, there is a falling edge on clk.
// The falling edge on the clk is used for the write. 

// The shifter is driven by rising and falling edges on clk. 
// The rising edge on the clk is used for the shift. 
// The falling edge on the clk is used for the next shift. 

// The ena pin is driven high on a rising edge on clk.
// The clk is driven high on a rising edge onendmodule
