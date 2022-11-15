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


// This test verifies the shift operation.
// It compares the result of the shift operation with the expected value.
// The test is executed for every possible amount of shift.
testbench stimulus parallel_generated begin
	if (load) begin
		q <= data;
	end
	if (ena) begin
		if (amount == 0) begin
			q <= (data[63:0] & 0b00000) | (q[63:0] & 0b10000000);
		end
		else if (amount == 1) begin
			q <= (data[63:0] & 0b000001) | (q[63:0] & 0b10000000);
		end
		else if (amount == 2) begin
			q <= (data[63:0] & 0b000010) | (q[63:0] & 0b10000000);
		end
end
end
endmodule
