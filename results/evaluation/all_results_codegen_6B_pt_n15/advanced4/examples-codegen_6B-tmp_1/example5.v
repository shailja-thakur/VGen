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



module early_test = ERRORS_A[2:0],ARMs_A[1:0](
	"fast sum",1'b1,fast_sum_reg,
	"counter",1'b1,counter_reg,
	"wait_counter",1'b1,wait_counter_reg,
	"state",1'b1,state_reg,
	"outShift",WS_Q[0],
	"DFSlatch",DFS[64],
	"enanti",ena'r1,enable_reg,
	"reset",reset_reg);





	always @(posedge clk) begin
		wait_counter_reg <= wait_counter_in %res;
		DFS[counter_reg] <= DFS[DFS_clock_reg-1] & DFS[DFS_clock_reg-3];end
endmodule
