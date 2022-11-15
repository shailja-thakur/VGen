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


module
  mod1 (
    clk,
    load,
    ena,
    amount,
    data,
    q);
  mod1_load = load_reg;
  mod1_ena = ena_reg;
  mod1_amount = amount_reg;
  mod1_data = data_reg;
  mod1_q = q_reg;
  reg mod1_load;
  reg mod1_ena;
  reg mod1_amount;
  reg mod1_data;
  reg mod1_q;
  int mod1_load_load;
  int mod1_load_ena;
  int mod1_load_amount;
  int mod1_load_data;
  int mod1_load_q;
  int mod1_ena_load;
  int mod1_ena_amount;
  endmodule
