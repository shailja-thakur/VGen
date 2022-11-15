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

 
// /*
//  *  Register block
//  */
// reg [31:0] q;


// /*
//  *  You can see how the register can be used as a shift register in the following code
//  */
// zero_one_shift: reg[63:0]=0
//    // for some reason this does not work as expected, so the following solution was used:
//    //    if (ena) q=data[63:0];
//    //    if (ena) q=q<<1+data[63:0];
//    //    if (ena) q=q<<8+data[63:0];
//    //    if (ena) q=q>>1+data[63:0];
//    if (ena) q=q<<1;
//    if (ena) q=q<<8;
//    endmodule
