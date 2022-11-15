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


// Assigns a value to the register, executing a load.
always @(posedge clk) begin
  if (load) {
    q <= data;
  }
end


`define PARAM_LOAD 1
`define PARAM_ENA 1
`define PARAM_AMOUNT 2
`define PARAM_DATA 3
`define PARAM_Q 4

`define SHIFT_AMOUNT_LEFT 1
`define SHIFT_AMOUNT_RIGHT 2
`define SHIFT_AMOUNT_LEFT_8 3
`define SHIFT_AMOUNT_RIGHT_8 4

reg q;
reg load;
reg ena;
reg amount;
reg data;

reg [63:0] q;
reg [63:0] load;
reg [1:0] ena;
reg [1:0] amount;
regendmodule
