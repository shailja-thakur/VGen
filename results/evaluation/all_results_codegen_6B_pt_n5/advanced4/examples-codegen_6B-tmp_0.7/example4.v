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


// sh_init
// 
// initializes shifter
// 
always @(posedge clk)
begin
	if(load)
	{
		q <= data;
	}
	if(ena)
	{
		if(amount == 0b11)
		{
			q <= data;
		}
		else
		{
			q <= 0;
		}
	}
end
end


module sh_clk(input clk,
output reg clk_out);
//
// sh_clk
// 
// produces clock signal on clk_out.
//
always @(posedge clk)
begin
	clk_out <= 1'b1;
end
end

// sh_load
// 
// loads shifter to data[63:0]
// 
always @(posedgeendmodule
