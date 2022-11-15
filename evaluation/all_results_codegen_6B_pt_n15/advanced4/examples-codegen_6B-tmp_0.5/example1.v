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


// shift_reg: 64-bit register to shift into and load from.
// shift_ena: register to shift into.
// shift_amount: bit position to shift left or right.
// shift_data: bits to shift into shift_reg.
// shift_out: register to shift out.

always @(posedge clk) begin
  if(ena) begin
    if(amount == 0) begin
      reg[63:0] = shift_data;
    end
    else if(amount == 1) begin
      reg[63:0] = shift_data >> 1;
    end
    else if(amount == 8) begin
      reg[63:0] = shift_data << 7;
    end
    else if(amount == 9) begin
      reg[63:0] = shift_data << 8;
    end
  end
  elseend
endmodule
