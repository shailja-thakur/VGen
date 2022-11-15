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


module advshift2(input clk, input ena, input [1:0] amount, input [31:0] data, output reg [31:0] q); 
// when ena >= 1'b1, assign data[31:0] to q.
// shift amount denotes how much q will be shifted. Count begins immediately after rising edge.
// amount: \delta_t ?
//
//CHANGE THIS
#define D 0
bool output = 0;

void main(input std_logic clk, input std_logic ena)
{
            std_logic data_in = std_logic_strip((std_logic) mystring);
//(mystring).(length(mystring)\*8)

            (mystring)_Uint64 & shift_val, 
            & sum_val,
            & word_3endmodule
