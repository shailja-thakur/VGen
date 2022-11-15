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



// asm code for advancing a register by a given amount.
// input clk: - clock
// input load: - if high, load data into the register
// input ena: - enable the automatic advancing
// input [1:0] amount: - How much to advance the value.
// input [63:0] data: - Data to be loaded into the register.
// output reg [63:0]: - The register after advancing.
void advshift(int clk, int load, int ena, int amount, int data, int reg[63:0])
{
        if (load == 1 && ena == 1)
        {
                reg[63:0]=data;
        }
        
        if (ena == 1 && amount != 0)
        {
                t0 = clk;
                // Wait for at least 1 cycle of the clock.
                endmodule
