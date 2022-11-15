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


module main(input [31:0] data, output reg [31:0] result);

begin
    assign data = {data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7],
                 data[8], data[9], data[10], data[11], data[12], data[13], data[14], data[15],
                 data[16], data[17], data[18], data[19], data[20], data[21], data[22], data[23],
                 data[24], data[25], data[26], data[27], data[28], data[29], data[30], data[31]};
    assign result = advshift(clk, load, ena, amount, data, reg);
end
endmodule
