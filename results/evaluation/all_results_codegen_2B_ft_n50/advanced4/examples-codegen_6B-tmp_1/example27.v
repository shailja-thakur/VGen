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
	q<=data[63:0];
	end 
	else if (ena)
	begin
	case(amount) // case for direction and size of shift
	//amount<= 0: Left shift.
	//amount<= 1: Right shift.
	//amount<= 2: Invert the bits.
	//amount<= 3: No change.
	1'b0, 1'b1, 1'b2:
	begin
	if(amount==1'b0) // amount 0 or 1, Perform Left shift.
	begin
	q[63:1]=q[62:0];
	q[0]=0;
	end
	if(amount==1'b1) // amount 0 or 1, Perform Right shift.
	beginend
end
end
end
endmodule
