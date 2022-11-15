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
	q <= data;
	if (load) // what should this be??? is this correct?
	q <= {32'b0,data[63:1]}; 
	else if (ena) //Shift by 1,2,4,8,16,32,64,128 
	 q <= q << (amount[2:0]); //Sends a signal to latch what direction and how far to shift.
	end
endmodule
