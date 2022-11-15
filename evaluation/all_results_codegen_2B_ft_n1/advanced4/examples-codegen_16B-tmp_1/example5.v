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



always @ (posedge clk) begin
	if(load == 1'b1)
	 begin
	 // ??? BELOW IS SHIFT REGISTER WITH SHIFT ENABLED
	 q[63:0] = data[63:0];
	 end
	 // ??
	 // Design the remainder of the design with shift_register.
	 if (ena == 1'b1)
	 begin
	 // In case a shift should occur
	 if (amount == 2'b01 || amount == 2'b10) 
	 begin
	 // If left-shift, shift 1 to the left, else 8 to the right.
	 q[0] <= q[63];
	 q[63:1] <= q[62:0];
	 }
	 else if (amount == 2'b11 || amount == 2'b01) 
	 begin
	 // Reverse directionend
end
end
end
endmodule