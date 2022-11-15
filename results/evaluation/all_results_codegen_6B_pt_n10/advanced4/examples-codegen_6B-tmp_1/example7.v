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


int main()
{
	int a = 13;
	int b = 0;
	cout << "Advanced shift register:" << endl;
	int i = 0;
	boolean previous_input = false;
	while (i < 128)
	{
		// take clock rising edge as an input.
		// cache input changes into local storage.
		if ((a ^ b) != previous_input) // if previous conditions changed...
		{
			cout << hex << a << " " << dec << (int)ena << " " << amount << " " << data << endl;
			q[i] = a ^ (data & (amount == 1 || amount == 0 ? 0x1 : (unsigned char(data) >> amount-1)));
			previous_input = (a ^ b) != previous_input;
			for (int j = i+endmodule
