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


// commented out
//module [63:0] foo;
// reg always @(posedge clock) begin
// // 4-bit right shift on the input to the 64-bit shifter
//        foo <= {data[5:0], data[63:56], data[127:120], load, ena, amount};
// // 4-bit left shift on the input to the 64-bit shifter
//        foo <= {data[5:0], data[63:56], data[127:120], load, ena, amount, 2'b00};
// // 8-bit right shift on the input to the 64-bit shifter
//        foo <= {data[5:0], data[63:56], data[127:120], data[191:184], load, ena, amount};
//        foo <= {data[5:0], data[63:56endmodule
