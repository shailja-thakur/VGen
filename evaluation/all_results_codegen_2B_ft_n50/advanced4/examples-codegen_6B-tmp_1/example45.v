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


always @(posedge clk) // always because this happens on posedge
begin
if(load) // if load is high, output that data
	q <= data; 
else 
if(ena) // if ena is high, shift based on amount
begin
case(amount) // how is it shifted?
2'b00: q <= {q[58:0],1'b0}; // shift left 
2'b01: q <= {1'b0,q[59:1]}; // shift left 
2'b10: q <= {q[40:0],q[63:41]}; // shift right 
2'b11: q <= {q[39:0],1'b0}; // shift right 
endcase
end // if
end // always
end
endmodule
