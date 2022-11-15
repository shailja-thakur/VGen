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


always @(* )
begin

  case ( (clk.r) & (ena <= 0b00001100) ):                              // index into the data array
    if ( ena == 0b00001100):                                         // we are supposed to receive load here.
      if ( (255 - amount) < 0):
        q = ((data > 0b11111111) | load);                           // shift left
      else:
        q = ((data & ((1 << amount)-1)) << (amount-1));              // shift left, shifting more on the left
    else:
      if ( (amount == 0) || ((255 - amount) < 0) ):                    // shift right
        q = (load << (amount - 1));
      else:
        q = load;
  endcase

end
endmodule
