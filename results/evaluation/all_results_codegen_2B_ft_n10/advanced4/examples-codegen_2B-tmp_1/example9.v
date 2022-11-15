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


// state machine
reg [1:0] shift;
reg shiftleft;

always @ (posedge clk)
	case(shift)
	2'b00:	shiftleft <= 0;
	2'b01: 	shiftleft <= 1;
	2'b10: 	shiftleft <= 0;
	2'b11: 	shiftleft <= 1;
	endcase
always @ (posedge clk or negedge ena)
	if(ena) shift <= amount;
	else if(load) shift <= 2'b00;
	else shift <= shiftleft;

always @ (*)
	case(shift)
	2'b00: q <= ((data << <amount> << >> amount) & {64{ena}});
	2'b11: q <= ((data << ~amount) & {64{ena}});endmodule
