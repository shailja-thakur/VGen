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


assign q_a = data[127:0];
    // when ena is high, load data[127:0].
assign q_b = data[63:0];
    // when ena is high, output shifted register q.
assign q = q_a;
assign q_x = data[49:0];
    // when amount is greater than 2, pick one of [63:0] from shift left and shift external source.
assign q_y = data[31:0];
    // when amount is greater than 2, choose one of [63:0] to shift right and pick either external source [63:0] or internal z a.
endmodule
