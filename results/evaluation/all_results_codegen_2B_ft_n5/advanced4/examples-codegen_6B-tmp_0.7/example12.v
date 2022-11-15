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



// This is code to generate the testbench.
reg [63:0] comp;
reg [63:0] data;
reg data_load;
@(posedge clk, negedge load, negedge ena)
begin
  if (load) begin
    data_load = data;
  end
  if (ena) begin
    data = data_load;
    comp = data << (amount[0] + 1); // shift left by 1 bit
    q = comp;
  end
end



#define TESTBENCH
#ifdef TESTBENCH
// Test bench
reg [63:0] data;
reg data_load;
reg ena_load;
reg clk_load;
reg load_load;
reg amount_load;
reg [63:0] comp;
reg [63:0] resultendmodule
