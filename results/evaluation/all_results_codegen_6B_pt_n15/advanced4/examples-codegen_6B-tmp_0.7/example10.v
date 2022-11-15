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


  var clk = 0;
  var load = 0;
  var ena = 0;
  var amount = 0;
  var shift_out = 0;
  var shift_in = 0;

  var q = 0;

  function main()
  begin
    clk <= 1;
    load <= 1;
    ena <= 1;
    amount <= 2'b00;
    if (amount == 2'b00)
    begin
      shift_out <= shift_in << amount;
      q <= shift_out;
    end else
    begin
      shift_out <= data << amount;
      q <= shift_out;
    end
  end
endmodule
