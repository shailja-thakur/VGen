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


module uart_fifo(input [31:0] payload,
output reg [31:0] data,
output reg en);

module uart(input clk,
input en,
input [1:0] rxd,
input [3:0] tf,
input [3:0] rxf,
input [3:0] tx,
input [3:0] txf,
input [1:0] ctl,
input [31:0] payload,
output reg [31:0] data,
output reg en);

module uart_decoder(input clk,
input en,
input data,
output reg [31:0] payload,
output reg en);

module uart1(input clk,
input en,
input [1:0] rxd,
input [3:0] tf,
input [endmodule
