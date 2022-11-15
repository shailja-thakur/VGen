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


module assert  (true,..., false);
// http://www.verip.com/documents/80nmrb/pc-language-reference-and-data-model.pdf 
 //Blocks blacklist edges anywhere during asserts
interface scrub(input w_c, input w_o, input w_e, connection box<1:0> i_en);
//Now we are in the block of asserts to perform the configuration or the perterals.
//All input signals MUST connect to the block, since the input modules
//have all those signals now. Begin with those signals that encompass the scope.

endmodule
