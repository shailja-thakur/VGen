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
 begin: Shift
 case ({amount, load, ena})
 3'b100:
 begin
 if (load)
 q<=data;
 else
 begin
 case ({amount}) //Choose high or low amount
 2'b00: q<={1'b1, q[62:1]}; //When 'amount' is 00, shift left.
 2'b01: begin
 q={q[62:8], q[7:0], q[1:0]}; //When 'amount' is 01, shift left, and place higher 2 bits into lower 2 bits.
 q=q>>1; //Shift to the right.
 end
 2'b10: q={q[56:0], q[63:56]}; //When 'amount' is 10, shift right.
 2'b11: q={q[56:56], qend
end
end
endmodule
