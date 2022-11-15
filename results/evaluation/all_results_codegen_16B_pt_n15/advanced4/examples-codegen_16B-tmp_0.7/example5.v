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


reg [63:0] q;

// synch_load: 
//  '0' - Synchronous load.
//  '1' - Asynchronous load.
//
// This function implements a synchronous load.
void synch_load() {
// load: 
//  '0' - Load shift register q with data[63:0].
//  '1' - Load shift register q with 0.
//
// This function implements a synchronous load.
  if (ena) {
    q = data;
    if (load) q = 0;
  }
}

// synch_shift: 
//  '0' - Synchronous shift.
//  '1' - Asynchronous shift.
// 
// This function implements a synchronous shift.
void synch_shift() {
// ena: 
//  endmodule
