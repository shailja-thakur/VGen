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

    // Dinamescape DCodes
// $01111111    load high or low.
// $02oi23    ena or enam.
// $1iiiiii   where ii is between 7 and 0. Amount is a 1-based number.
// $ksssss    What bits to shift. Each bit chooses direction (left or right) and amount (1,8).
// Valid clockrate range: 0hz to 16000hz.
// DAISY 
reg m_load, m_ena, [3:0] m_amount, m_mode;
reg [63:0] m_shifter_reg;
m_load <= 0;
m_ena <= 0;
m_amount <= 127;
m_mode <= 31;

always @(posedge clk) // every character start D14 rising edge.
{
   //this combinational blocks produces two outputsendmodule
