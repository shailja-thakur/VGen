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


interface // with attribute reg, data : Registers: 63..0
	stdlib.types.conc.conc.init-uint64,
	stdlib.types.conc.conc.init-reg = {data:1:0; q:0; Z=value : "zeded012e4c9f*", initial=_}.reg;

interface toclauses.advice.advise //-> toclauses.advice.advisory?
	data fixes, reg fix,
	data untilisready({init-true-boolean}), reg isready({init-true-boolean}),
	data clk({init="clk"}), reg ack({init=false}),
	data loads, reg bytesloaded((reg bytesloaded-load)(reg bytesloaded-notloaded))) = {
					op(1)
		innfficontainerendmodule
