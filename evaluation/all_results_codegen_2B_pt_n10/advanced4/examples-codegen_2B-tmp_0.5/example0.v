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


assign q[63:0] = data;

always @(posedge clk)
{
    if (ena)
    {
        if (load)
        {
            q[63:0] = data;
        }
        if (amount == 0)
        {
            ena = 0;
        }
        else if (amount == 1)
        {
            ena = 0;
            q[63:0] = q[63:0] << 1;
        }
        else if (amount == 8)
        {
            ena = 0;
            q[63:0] = q[63:0] << 8;
        }
        else
        {
            ena = 0;
        }
    }
}
endmodule
