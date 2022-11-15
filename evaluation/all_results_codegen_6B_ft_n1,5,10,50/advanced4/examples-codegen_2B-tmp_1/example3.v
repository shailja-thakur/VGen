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

  always@(clk.eq(1) and load.eq(0) and ena.eq(0)) begin    
      if (ena not_eq ena_val) begin
          load_ena_val = ena.full;
          if (load_ena_val == 1) begin
              q = data;
          end
      end
  end
*/
endmodule
