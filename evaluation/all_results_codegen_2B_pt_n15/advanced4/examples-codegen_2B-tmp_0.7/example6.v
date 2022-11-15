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


// SERIAL_ENABLE : enable serial communication.
// SERIAL_DATA  : valid data to send to serial output.
// SERIAL_CLK   : valid clk to send to serial output.
// SERIAL_LOAD  : valid ena to send to serial output.
// SERIAL_LOAD_ENABLE
// SERIAL_LOAD_DISABLE

// SERIAL_START_ENABLE : enable the shift register to take data from the shifter.
// SERIAL_START_DISABLE

// SERIAL_STOP_ENABLE : stop the shift register from taking data from the shifter.
// SERIAL_STOP_DISABLE

// SERIAL_ENABLE_LOAD_ENABLE : enable the shift register to load data from the shifter.
// SERIAL_ENABLE_LOAD_DISABLE

// SERIAL_ENABLE_LOAD_DISABLEendmodule
