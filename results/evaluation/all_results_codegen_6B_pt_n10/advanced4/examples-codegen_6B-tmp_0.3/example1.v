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


// ------------
//  Mainline
// ------------

#include "sys/delay.h"
#include "sys/intrinsics.h"
#include "sys/syscall.h"
#include "sys/types.h"

reg [63:0] q;
reg [63:0] data;
reg [1:0] load;
reg [1:0] ena;
reg [1:0] amount;

reg [63:0] shift_data;
reg [1:0] shift_load;
reg [1:0] shift_ena;
reg [1:0] shift_amount;

reg [63:0] shift_result;
reg [63:0] shift_result_prev;
reg [63:0] shift_result_next;

reg [63:0] shift_result_endmodule
