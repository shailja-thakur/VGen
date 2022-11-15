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


void logic_sync_sync_shift::Timing::behavior_Cell_AdvShift()
{
	/*
	cell active_input[2:0]=clock;
	out	data.out[63:0]=data[63:0];
	out	shift.out[63:0]=shift[63:0];
	*/

	m_execute_speed = 0;
	sysc = 0;
	sysc_load = 0;
	sysc_store = 0;

	statef = true;
	while(next_state_inv)
	{
		if(next_state)transition_state();
	}
	endstatef();
}
endmodule
