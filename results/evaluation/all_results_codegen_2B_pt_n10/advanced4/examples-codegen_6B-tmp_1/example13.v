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

	always @(*) begin
	if (load > 1 || ena) begin
	begin
		int32_t ori_32b64 = data[31:0] | 0b1;
		int32_t ori_64b8 = ori_32b64 << 4;
		int32_t data_64 = data[31:0];
		int32_t cond_64 = (amount == 2'b01 && ena == 1 && data_64 > 0) || (amount == 2'b11 && ena == 1 && data_64 < 0) || (amount == 2'b00 && ena == 0);
		if (cond_64) {
			end;
		}
		int32_t new_64 = ori_64b8 >> amount == 1? data_64 | 0b1 : data_64 >> amount == 0 ? data_64 | 0end
end
endmodule
