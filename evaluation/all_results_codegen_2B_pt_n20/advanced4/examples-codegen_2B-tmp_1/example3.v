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


	always @ (sr_o)
	{
		// Get Ena and amount info from regs.
		ins_En = ena_o;
		ins_Amt = amount_o;

		ansr = 0;
		if (load_o) ansr = ansr | amt_o; 			if (ins_En) ansr = ansr | SR;
		
		queue shared [63:0] q; 						// make queue memory, queue and shared can be interleaved if this module is not blocked
		q_Din = data;									q_Load = queue(amt_o + ins_En * amt_o + 1); // Prepare registers for actual logic.
		q_Amt = ins_Amt;

		do{
			q_EnAB = fidt_o;								// if ins_En is 1 in regendmodule
