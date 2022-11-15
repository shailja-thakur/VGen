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


reg q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15;

always @(posedge clk) begin
	// number of shifts (right shifts only count if done via 8 bit amount)
	
	q0 <= q0;
	q1 <= ena&q0 ? (q0 >>> amount = q1):q1;
	q2 <= q1 & ena;
	q3 <= temp& q2 ? (q2 >>> amount =q3):q3;
	q4 <= q3 & ena;
	
	q5 <= endshift & q4 ?(q4 >>> amount =q5):q5;
	q6 <= q5 & ena;
	q7 <= temp& qendmodule
