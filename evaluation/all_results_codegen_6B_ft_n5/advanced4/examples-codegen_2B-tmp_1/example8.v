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

 always @ (posedge clk) begin
 if (load) begin
	q <= data;
 end
 if (ena) begin
	case(amount)
	//8'b00000011: begin q <= {q[62:0], q[63]}; end
	3'b001: begin
	if({q[63:0], q[63]} > 64'h0ffffffff) begin 
	q <= 64'h0;
	end
	else begin
	q <= {q[63:0], q[63]};
	end
	end
	3'b010: begin
	if({q[63:0], q[63]} > 64'h0ffffffffff) begin 
	q <= 64'h0ffffffff;
	end
	else begin
	q <= {q[63:0], q[63]};
	endend
end
end
endmodule
