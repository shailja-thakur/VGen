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


always logic [63:6] start, finish, suspend;
always logic read_required;
write_only std_logic [31:0] out;

begin
#0 addr quads 1'b1
addr should be suspended after 4 consecutive
addresses are issued (latter addr only in single step).

#1 rate select 1'b0
rate select is first loaded w abl to cnot
and then reset to zero on next address.  This 
improves timing.

#2 reduce the valency of the hazard.
in order to reduce the valency of the hazard before 
executing an address, delay several cycles prior to issuing 
load.  Load and load mux should be issued no earlier than 
20 cycles apart,  since there is some heuristic in write mux 
hazards.  Watch out for sequence break.

#3 use timer onendmodule
