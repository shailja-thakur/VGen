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

  always @(posedge clk or negedge load or negedge ena) begin
    if (ena) {
      if (amount == 0) {
        shiftreg = 0;        // shift left 1 bit
        q <= ((shiftreg << 1) | (1'b1 << (data_bits+1)*(shiftreg+1)));    // q <= concat(shiftreg >> 1, ena)
      } else if (amount == 1) { // when amount == 1, shiftleft needs additional latch
        if (!load) {
          shiftreg <<= 1;
          q <= shiftreg;
        }
        shiftreg++;
        q <= ((shiftreg << 1) | (1'b1 << (data_bits+1)*(shiftreg)));
      } else if (amount == 2) {
        shiftreg = data[63:0] <<end
endmodule
