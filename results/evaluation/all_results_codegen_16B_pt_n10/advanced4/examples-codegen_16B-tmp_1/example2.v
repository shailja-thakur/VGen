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


// Initialization/use
// selects shift direction @a dir (alow, aright), and amount @a aamt.
// @para op: operator for reading the content of the register (read(), capture())
module AdvancedShiftPort(input clk,
input load,
input data,
input ena,
input [1:0] dir,
input [3:0] aamt,
output [63:0] d,
output [ENABLEN:0] clear_req,
output [OPCONTROL:0] opr,
output [ADDRESS:0] index,
output [DATA:0] data_in,
input [DATAOUT:0] data_out,
output [MSYNCH1:0] msync1,
output [MSYNCH2:0:0] msync2); 
// @para clear_endmodule
