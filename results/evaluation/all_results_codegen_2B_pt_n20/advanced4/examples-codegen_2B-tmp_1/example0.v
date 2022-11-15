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

  always @(*reset_reg)
    begin 
      ena <= 1'b0;
      load <= 1'b0;
      next;
    end 
    begin 
      ena <= ena;
      load <= ena;
    end 


    always @(*q_reg)
      begin 
      if signal_clk and clk pin = '0' 
        ena <= 1'b1;
        q <= second 8'b0;
      
      if load and signal_clk and clk pin = '1' 
        ena <= 1'b1;
        q <= second [decimal: 31:0];
      else next;

      if ena and load and signal_clk and clk pin = '1' 
        ena <= 1'b0;
      else next;

    end 
  endmodule
