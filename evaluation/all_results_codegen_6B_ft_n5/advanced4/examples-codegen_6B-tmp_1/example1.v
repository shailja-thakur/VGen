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

 
always @ (posedge clk) // always because v is always positive in a posedge block
begin //starting
if(load) // if load is HIGH, then output is 0.
q <= data; //assign 0 as the new output and data as the input
 
else if(ena) // if ena is HIGH then 2 output bits of AV are HIGH, indicating a positive edge on A. The output is q[62:0], where q[63] is a copy of q[31]
q <= {q[30:0],q[63:31]}; // To sum, the previous output (here q[31]) is added onto q[62:0], which is the output we want.
 
end // ending 
endmodule
