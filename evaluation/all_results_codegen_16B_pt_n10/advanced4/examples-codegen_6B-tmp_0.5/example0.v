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


always @(posedge clk)
begin
if (load) q<=data;
else if (ena) begin
case(amount) // how many cycles to shift, encoded in number of 1s
3'b000: q<={q[62:0],1'b0}; // shift left
3'b001: q<={q[55:0],1'b0,1'b0}; // shift left by 2
3'b010: q<={q[56:0],2'b0}; // shift right
3'b011: q<={q[63],q[63:1]}; // shift right by 2
3'b100: q<={q[55:0],3'b0,q[63:2]}; // shift right by 3
3'b101: q<={q[63],q[63:1]}; //end
end
endmodule
