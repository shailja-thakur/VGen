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
	if (load) 
	begin
	// if the load is '1' then load the input into the reg. 
// assign the input to the debounced output register for synchronous output 
	q=data;
	end 
	else
//default values of all the control signals
	begin
	
	if (clk==1'b1) 
	begin
	if (ena) 
	begin
// if the 'enable' signal is high, begin doing the arithmetic shift 
	case(amount) 
	2'b00:	begin // left shift
	// do the operation on data and assign it to the q
	q= q << 1;
	end
	2'b01: begin // left shift
	q = q << 8;
	end
	2'b10:end
end
endmodule
