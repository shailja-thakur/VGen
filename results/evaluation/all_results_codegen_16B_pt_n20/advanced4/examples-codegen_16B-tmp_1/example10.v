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


// Constructor, fills shift register, enables module.
// clk = 0: load on rising edge.
//       = 1: wait for load pulse, and shift on falling edge.
// ena = 0: perform shift.
//       = 1: enable shift 
// amount = Offset to arithmetic right. Valid value is [0:2].
// [63:0] Output at shift register Q.
function advshift(arguments) {
/// Constructor that calls shift right.
function ctor(clk, load, ena) { 
    return advshift(clk, load, ena, 2, 0, arguments[0]);
}

/// Shift left by 1 bit.
function advshift(clk, load, ena, amount, data) {
    if (typeof arguments[4] === "undefined") { arguments[4] = 0; }
endmodule
