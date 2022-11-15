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


// synchronous load: 0 = load, 1 = not load.
// clk: 0 = low period, 1 = high period.
// ena: 0 = low pulse, 1 = high pulse.
int main()
{
  unsigned long i;
  unsigned long j;
  unsigned long load_bit = 0;
  unsigned long ena_bit = 0;
  unsigned long shift_bit = 0;
  
  for(i=0; i<64; i++)
  {
    q[i] = 0x00;
  }
  
  for(i=0; i<64; i++)
  {
    if(clk == 1)
    {
      ena_bit = ena_bit == 1 ? 0 : 1;
    }
    else
    {
      ena_bit = ena_bit == 1 ? 1 : 0endmodule
