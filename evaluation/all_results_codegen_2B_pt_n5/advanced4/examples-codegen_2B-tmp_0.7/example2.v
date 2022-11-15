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

  always @(trisclk)
  always @(clk)
  begin
    if (clk == 1)
    begin
      if (ena == 1)
      begin
        if (load == 1)
        begin
          q = data[63:0];
          if (amount == 0)
          begin
            ena = 0;
          end
          if (amount == 1)
          begin
            ena = 1;
          end
          if (amount == 2)
          begin
            ena = 1;
            q = (q << 8) | data[63:8];
          end
          if (amount == 3)
          begin
            ena = 1;
            q = (q << 16) | data[63:16];
          end
          if (amount == 4)
          begin
            ena = 1;
            q = (q <<end
end
end
end
end
endmodule
