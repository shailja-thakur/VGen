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

	reg [63:0] loaddata;
	reg [3:0] loadamount;
	always @(posedge clk) begin
	if(load)
	begin
	loaddata <= data;
	loadamount <= amount;
	end
	else begin
	if(ena)
	begin
	case(loadamount)
	4'b0000: q <= {q[62:0], loaddata[63]};
	4'b0001: q <= {q[63], loaddata[62:0]};
	4'b0010: q <= {loaddata[61:0], q[63:1]};
	4'b0011: q <= {q[63:0], loaddata[61]};
	4'b0100: q <= {q[63], loaddata[60:0]};
	4'b0101: qend
end
end
endmodule
