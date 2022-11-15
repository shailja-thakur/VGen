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


regall int my_register = 0;

visible main ()
{
  long value;
  int amount;
  value = data;
  result = 0;
// start visualization


char dataout;
// Clock in Load command and store it in my_register. If load is high, read shift register q into my_register,
//   and load shift register data%32 into my_register.
// enable nops and wait for duration_swits of clocks, then assign value equal to my_register
// 
// Clock in Shift command. Assign current value in my_register to dataout. Delay nops for duration_nops
//   clocks, and latch dataout as the first word of the shift register (data%32). Store my_register in q.











  while (1) {
    if (!ena)
      wait;
    whileendmodule
