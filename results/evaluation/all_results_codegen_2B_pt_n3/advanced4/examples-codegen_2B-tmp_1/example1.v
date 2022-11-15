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


always @( posedge clk )
{
// even source bits, even shifter bits
if (ena == 1')		// LSB 1'b11
{
    q[63] = (read.flag[63] | (load << amount));
}
else if(load == 0') // LSB 1'b11
{
    q[63] = ((bit ~ read.flag[63]) << amount);
}
else if (ena == 1')	// LSB 1'b11
{
    q[63] = (read.flag[63] | (load << amount));
}
else if(load == 0') // LSB 1'b11
{
    q[63] = ((bit ~ read.flag[63]) << amount);
}

else if (ena == 1') // LSB 1'b11
{
    q[64]endmodule
