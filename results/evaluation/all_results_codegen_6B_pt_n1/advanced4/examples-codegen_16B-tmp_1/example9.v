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

 always @(posedge clk) begin
 go = 0;
 case (ena)
 0: go = 0;
 1: 
 begin
 case (amount)
 2'b00: 
 begin
 // shift left by 1 bit
 q[0] = q[63];
 q[64] = q[127];
 // move others
 q[64-:1] = q[62 -: 61];
 q[63-:63] = 0;
 end
 2'b01;
 begin 
 // shift left by 8 bits 
 q[0] = q[63];
 q[64] = q[127];
 // move others
 q[64-:8] = q[62 -: 63];
 q[63-:64] = 0;
 end
 2:
 begin 
 // shift right by 1 bit
 q[63:1] = 0;
end
end
end
endmodule
