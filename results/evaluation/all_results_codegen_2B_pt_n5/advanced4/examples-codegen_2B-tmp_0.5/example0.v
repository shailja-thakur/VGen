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
reg [63:0] data;
reg [63:0] shift_reg;
reg [63:0] shift_reg_out;

always @(posedge clk)
{
    if (ena == 1'b0)
        data = data << amount;

    q = data;
}

always @(negedge clk)
{
    shift_reg = q;
    shift_reg_out = shift_reg >> amount;
}

// shift right by 1 bit
assign shift_reg_out = shift_reg >> 1;
// shift right by 8 bit
assign shift_reg_out = shift_reg >> 8;
endmodule
