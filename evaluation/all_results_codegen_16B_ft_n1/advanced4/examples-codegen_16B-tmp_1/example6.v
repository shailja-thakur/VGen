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


reg [63:0] q_reg;

always@(posedge clk)
begin
case(ena)
	1'b1: q <= #1 data;
	default: q <= #1 q_reg;
endcase
if(ena)
begin
	case(amount)
	2'b00, 2'b01: 
	begin
	 q_reg <= #1 q;
	end
	2'b10:
	begin
	 q_reg <= #1 q >> 1;
	end
	2'b11:
	begin
	 q_reg <= #1 q >> 8;
	end
endcase
end
else
begin
	case(amount)
	2'b00, 2'b01:
	begin
	q <= #1 data;
	end
	2'b10:
	begin
end
endmodule
