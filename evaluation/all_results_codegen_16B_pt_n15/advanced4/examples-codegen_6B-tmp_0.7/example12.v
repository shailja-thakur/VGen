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


// This code is not really designed to work with the logic below.
// We'll use the logic below only to test how the code works.
// The code below is designed to work with the logic above.
begin reg [63:0] q;
reg [63:0] r;
begin
    if (load == high) then
        if (ena == high) then
            if (amount == 2'b00) then
                r = data;
            else if (amount == 2'b01) then
                r = data << 8;
            else if (amount == 2'b10) then
                r = data >> 8;
            else if (amount == 2'b11) then
                r = data << 8;
            else
                r = q;
        end;
    end;

    if (ena == high) then
        if (amount == 2'bendmodule
