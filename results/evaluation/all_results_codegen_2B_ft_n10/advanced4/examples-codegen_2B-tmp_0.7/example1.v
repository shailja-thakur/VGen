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


// Define the internal signal names used in the shift register implementation.
reg [63:0] sreg_shift_in;
reg [63:0] sreg_shift_out;
always @(posedge clk)
begin
	if (load)
	begin
	// if load is high, shift register is cleared.
	sreg_shift_in <= data;
	end
	else
	begin
	// if load is low, load new data.
	sreg_shift_out <= sreg_shift_in << amount;
	end
end

always @(posedge clk)
begin
	if (ena)
	begin
	// if ena is high, shift register is updated.
	q <= sreg_shift_out;
	end
end

endmodule
