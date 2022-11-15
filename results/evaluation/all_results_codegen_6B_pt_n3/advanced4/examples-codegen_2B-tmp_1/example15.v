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


wire clock = clk; 
wire ena = ena; 
wire [255:0] data; 
wire sh; 

reg [63:0] q; 

void main()
{
  while(true) {
    posedge clock;
    if (ena)
      ata1write_set(data);
    ena = ena && load; 
    q = ata1read(load) << amount; 
  }
}
endmodule
