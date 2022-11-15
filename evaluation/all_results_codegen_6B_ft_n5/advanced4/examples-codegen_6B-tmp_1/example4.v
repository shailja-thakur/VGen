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


always @(posedge clk) begin
	if (load)
	begin
 
//*************Code to shift based on next two inputs.*****************************
// The Output is assigned (like a Register) to a Behavioral Blocking Assignment.
	assign q[0] = data[0];
	assign q[1] = data[1];
	assign q[2] = data[2];
	assign q[3] = data[3];
	assign q[4] = data[4];
	assign q[5] = data[5];
	assign q[6] = data[6];
	assign q[7] = data[7];
	assign q[8] = data[8];
	assign q[9] = data[9];
	assign q[10] = data[10];
	end
end
endmodule
