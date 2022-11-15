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

	integer i;
	reg [6:0] shift;
	
	always @ (posedge clk)
	begin
	if (load) begin 
	 q = {data[0],data[63:1]};
	 end
	else begin
	 if (ena) begin shift = amount ; end
	 ena<=1;
	 if (shift==2) begin 
	 q= data << 1;
	 end
	 else if (shift==3) begin 
	 q = {data[31:0],data[63:32]};
	 end
	 if (shift==5) begin
	 q= data >> 1;
	 end
	 else if (shift==6) begin
	 q= data;
	 end
	 end
	end
endmodule
