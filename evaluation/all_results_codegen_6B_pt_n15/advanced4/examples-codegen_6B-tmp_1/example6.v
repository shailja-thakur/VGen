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



// First look at Bit shifts:
signed result = data[63:0]; // 32 before 20 after shift

if(amount == 0b01) {
    // need to work way from left to right
    for(int i = 63; i > 0; i--) {
        result = result >> 1;
        if((data[i] & 0x01) == 1) {
        // shift_left
        // if i is enabled && bit lsb of data
        // add one to data on word index
        }
        else if(((~(data[i-1] >> (i - 1)) & 1) == 0) && ((~(data[i] >> (i - 1)) & 1) == 0))
        {
            // move i from left to right
            // bits from both sides of i are aligned
            result = result >> 2;
        endmodule
