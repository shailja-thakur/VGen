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


// when ena is 1
always @(posedge clk) begin
// if load is high
// begin
	if(load) begin
	// store input data in the register
	q = data;
	// for shifting left
	if (amount == 2'b00 | amount == 2'b11) begin
	// left shift stored term will become part of the output
	q = q << 1;
	// when shifting right
	if(amount == 2'b01 | amount == 2'b10) begin
	// right shift stored term will become part of the output
	q = q >> 1;
	// performs a right shift
	// when amount is neither 2'b00 nor 2'b11
	end
	end
// if load is low, retain previous value
// end
	
	
// assign data to output
// assign output to q
endend
endmodule
