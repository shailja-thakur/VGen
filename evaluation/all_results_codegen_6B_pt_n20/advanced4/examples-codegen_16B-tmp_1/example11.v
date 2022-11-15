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


always@(posedge clk) 
	begin

if (!load)
	begin
// if not loading, keep values of register
q <=data; // single bit
`ifdef BIG_ENDIAN
accu3 <= a5; // keep losses in end of bit order
accu2 <= a4; 
accu1 <= a3; 
accu0 <= a2; 
accu11 <= a15; 
accu10 <= a14; 
accu9 <= a13; 
accu8 <= a12; 
accu7 <= a11; 
accu6 <= a10; 
accu5 <= a9; 
accu4 <= a8; 
accu27 <= a23; 
accu26 <= a22; 
accu25 <= a21; 
accu24 <= a20; 
end
end
endmodule
