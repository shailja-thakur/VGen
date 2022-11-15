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


// ***********************************************************************************************************************
// * Design - Data Type Comments easier At the start of the assignment*
// ***********************************************************************************************************************
	reg [63:0] RegData; // in the diagram, here is the status 
	reg [63:0] ShiftLeft;
	reg [63:0] ShiftRight;
	reg [63:0] Ans; // Declaring another Reg to use inside the always blocks
	
	initial 
	begin
	 
	reg [63:0] Datain; // assigning same data to each 
	
	ShiftLeft[63:0] = 8'b00000000; // assign 0 to ShiftLeft
	ShiftRight[63:0] = 8'b00000000; // assign 0 to shiftright 
	
	
	RegData <= 0; // assign 11223345 low to RegData
	
	
	end
endmodule
