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


reg [63:0] shift;
reg [63:0] reg_m;
reg [63:0] reg_n;

always @(posedge clk)
{
    reg_m = amount & 0b11;
    reg_n = amount & 0b10;
    if (ena == 1)
    {
        if (load == 1)
        {
            shift = data[63:0];
        }
        if (reg_m == 1)
        {
            shift = shift << 1;
        }
        else if (reg_n == 1)
        {
            shift = shift >> 1;
        }
    }
}
`
endmodule
