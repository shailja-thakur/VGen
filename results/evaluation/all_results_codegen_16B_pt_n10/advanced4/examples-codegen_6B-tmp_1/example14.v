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

 


entity access64#(inline int load, inline int ena, int mux)
{
   reg[] q;
    entities master_q = {q};
 with {
	
	always @(posedge clk)
	if(!load) { 
		q <= 0;
	} else if(ena) {
		if(mux == 2'b00) {
			q[63:0] <= (data >> 1); 
		} else if(mux == 2'b01) {
			if(data[0] == 1) {
				q[63:0] <= (data >> 8);  
			} else {	
				q[63:0] <= (data << 8);  
			}
		} else if(mux == 2'b10) {
			q[63:0] <= (data <<endmodule
