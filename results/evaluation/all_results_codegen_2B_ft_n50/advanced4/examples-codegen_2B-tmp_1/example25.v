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


always@ (posedge clk)
begin
	if(load)
	begin
//	{{q[63:8]}, 	{q[7:0],	qd}} <= {{data[63:8]}, {data[7:0],	data}, q, ena, 1'b1};
//	{{q[7:0]}, 	{q[63:8]}, {qd[63:8],	qd}} = {{q[63]}, {q[62:0]}, qd, {qd[7:1]}, 1'b1};
	begin
	q <= {data[63:0],	data[63:0]};
	qd <= {data[64], data[63:1]};
	end
	end
	else begin
if(ena)
q <= q << amount;
end
end
endmodule
