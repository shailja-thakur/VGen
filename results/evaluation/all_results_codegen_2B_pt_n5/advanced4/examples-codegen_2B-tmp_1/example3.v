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


//always10 ToDo : fill in functionality
void execute_advshift(char r, char l, char a, unsigned char ld, char ena, unsigned char amount) {
// LOAD: Should receive a single-bit stream.
//    {1'b0: shift_input is low}
//    {1'b1: shift_input is high}

	if(ena == 1){
		data = data >> amount;
		data = data << (9 + amount);
	}


	switch (amount){
	case 1:
		if (ena == 1){
			data = data >> 1;
		}
		break;
	case 8:
		if (ena == 1){
			data = data << (8 + amount);
		}
		break;
	}
}endmodule
