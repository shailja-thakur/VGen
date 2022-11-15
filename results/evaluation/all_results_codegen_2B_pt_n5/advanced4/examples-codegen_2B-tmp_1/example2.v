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


reg [63:0] base;
reg status;
reg shift_q:uint;

assign update_q = shift_q;

#6NC6_32D4``32D4nA
10   MOV (D://n&0)|(D:nd=n Dos:n=32
#14+32DOd|ed
13   MOV (D@n&0) or (D:nd=n Dos:n=32
#14+32DOd|ed
12   MOV (D@n&0)|(D:nd=n Dos:n=32 '0:Ck)

#1  IF(load!=1)  
#2  
#3  ; OR assist may require generating NOPs

#4  ; Phase 4 and the toggling of get and set state

11   decl (endmodule
