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

  loop
    begin
      case (amount)
        0'b00:  // 2'b00, shift perform left shift by 1 bit.
          q = 0;
        2'b01:  // 2'b01, shift perform left shift by 8 bits.
          q = data[(62 - amount) - 1:62];
        2'b10:  // 2'b10, shift perform right shift by 1 bit.
          q = data[(62 - (amount+1)) + 1:62];
        2'b11:  // 2'b11, shift perform right shift by 8 bit.
          q = data[0:62] >> amount;          
      endcase
      if(ena = '1')
        begin
          if(load = '1')
            q <= data[63:62];        
        end
  end
endmodule
