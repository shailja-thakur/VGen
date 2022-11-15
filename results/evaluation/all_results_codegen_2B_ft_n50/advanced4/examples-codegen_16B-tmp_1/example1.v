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
	//assign q = data[63:0];
	q = {enb,data[63:1]};
 end
 else 
 begin
 	if (ena)
	 begin
	 	if(amount==2'b00)
	 	 begin
	 	// left shift by 1 bit.
	 	 	q = {1'b0, q[63:1]};
	 	 end 
	 	else if(amount==2'b01)
	 	 begin
	 	// LEFT SHIFT ENCASING 8x1 MOV USED LSB FIRST
	 	// Left shift 8 times, so shift 1
	 	 	q = {q[0], q[63:9]};
	 	 end
end
end
end
endmodule
