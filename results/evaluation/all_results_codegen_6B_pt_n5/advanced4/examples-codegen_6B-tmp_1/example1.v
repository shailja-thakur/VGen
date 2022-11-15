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




enable stall    ->clk;
stall         = "clock_enable";
stall         = "c_ct0";
stall         <= clk;
stall         => data,q := 0;
stall         <= data, q;
stall         <=> stall |= load |= ena;
stall''(load,ena) & 100'h15 ? stall: stall;

dont_build


#words data_load ->stall,stall;
data_load       => !size8|stall;
data_load       => !size16|stall;
data_load       => !size64|stall;
size8           => d(8,15),c(1,14);
size16          => d(16,31),c(1,15);
size64          => d(64,63),c(1,31);
endmodule
