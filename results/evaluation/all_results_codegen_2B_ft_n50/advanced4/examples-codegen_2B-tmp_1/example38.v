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


// shift on ena, with amount == 0
	always @(posedge clk) begin
	 
	if(ena) begin
	
	
	case(amount)
	
	// 2'b00: {q[63:48], q[47:0]} = {data[63:48], data[47:0]};
	// q[47] = data[63];
	// q[46] = data[62];
	// q[45] = data[61];
	// q[44] = data[60];
	// q[43] = data[59];
	// q[42] = data[58];
	// q[41] = data[57];
	// q[40] = data[56];
	// q[39] = data[55];
	// q[38] = data[54];end
end
endmodule
