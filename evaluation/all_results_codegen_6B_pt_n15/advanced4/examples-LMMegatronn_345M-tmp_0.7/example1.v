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

  wire [1:0] result;
  wire [7:0] shifter_in;
  wire [7:0] shifter_out;
  reg shifter_carry_in;
  reg shifter_zero_in;
  reg [31:0] sc_in;  
  reg sc_zero;
  reg [31:0] sd_in;  
  reg [3:0] shifter_out;
  wire [3:0] shrot_out;
  
  always @(posedge clk)
  begin
    if(load)
    begin
      shifter_carry_in <= 0;
      shifter_zero_in <= 0;
      sc_in <= 0;
      sr_in <= 0;
end
end
endmodule
