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


reg [7:0] a;
reg [3:0] o;
wire [63:0] shifted;

shift_reg_4 stages(
.load(load),
.ena(ena),
.amount(amount),
.data({1'bx,data[63:68]}),
.shifted(shifted)
);

always@(data)
begin
	if(load==0)
	begin
	a=data[63:68];
	o=7'd0;
	end
	else
	begin
end
assign q=shifted;
end
endmodule
