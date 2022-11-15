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

 always @ (posedge clk)
 
begin
	
	if (load)
	 
	begin
	 
	q <= #2 {data[56], data[55], data[54], data[53],
	data[52], data[51], data[50], data[49], data[48],
	data[47], data[46], data[45], data[44], data[43],
	data[42], data[41], data[40], data[39], data[38],
	data[37], data[36], data[35], data[34], data[33],
	data[32], data[31], data[30], data[29], data[28],
	data[27], data[26], data[25], data[24], data[23],
	data[22], data[21], data[20], data[end
end
endmodule
