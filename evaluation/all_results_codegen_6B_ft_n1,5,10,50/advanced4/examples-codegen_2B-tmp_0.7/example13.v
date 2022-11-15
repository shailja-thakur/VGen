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


reg [63:0] q;
reg [63:0] r;
reg load_by;

always @(posedge clk)
{
    load_by = load;
    if (ena)
        r = data;
    else
        q = r;
}

always @(posedge clk)
{
    load_by = load_by << amount;
    if (ena)
        r = r << amount;
    else
        q = q << amount;
}

always @(posedge clk)
{
    if ((r[63] & 0b00000001) == 0)
        q[63] = r[63];
    else
        q = r;
}

always @(posedge clk)
{
    if ((q[63] & 0b00000001) == 0)
        endmodule
