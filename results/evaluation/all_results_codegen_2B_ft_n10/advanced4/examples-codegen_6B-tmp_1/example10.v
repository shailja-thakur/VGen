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


module issue(input clk, input load, input ena, input send, output reg [63:0] q);
module gsem(input clk, output reg [63:0] q);
// wait at least one clock cycle to see changes in stored values.
module stallguard(input clk);
// check possibly stale values.
// only simple III/4 counter example, not real delay. 
module counter(input clk, output reg [63:0] a);
// count timer.

module intfc(input clk, sum find, sum swap, a_int i, cmd c, busy busy_or, push, end [63:0] e);
interface intfc_busybusy_or(input clk, input busy);
// or busy with input dispatch, else error, error occurs under load.
interface intfc_cmdbusy(input clkendmodule
