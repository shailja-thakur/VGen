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


// DFF #1
// Design a D flip-flop, add ports and signals to it as desired, 
// Sync-Load a storage register, testing both data and control signals.
// As in: ordinary flip-flop with Normal operation. with SLFT 0. 
// (SLFT means SER flip-flop)

module dff(input clk,
      input  rising_edge_tdiff_1_2,
      input  falling_edge_data_1_2,
      input  rising_edge_tdiff_2_3,
      input  falling_edge_data_2_3,
      output d);
// (ABCDEF)(ijk)(AHILKDJ)
// . . . . . . . . . . . . . . . .

// RDY #1
// Read-enable synchronous clear operation during loading.
endmodule
