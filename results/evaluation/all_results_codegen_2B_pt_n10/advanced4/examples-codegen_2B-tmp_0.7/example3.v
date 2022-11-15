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




// shift register
wire [63:0] q; 
reg [63:0] data; 
reg [63:0] q_out; 
reg [63:0] q_in; 
reg [63:0] ena; 
reg [63:0] load; 

reg [63:0] load_out; 

reg [63:0] load_in; 

reg [3:0] shift_amount; 

reg [63:0] shifter; 

reg [63:0] shifter_out; 

reg [63:0] shifter_get; 

reg [63:0] shifter_in; 

reg [63:0] shifter_out_reg; 

reg [63:0] load_in_reg; 

reg [63:endmodule
