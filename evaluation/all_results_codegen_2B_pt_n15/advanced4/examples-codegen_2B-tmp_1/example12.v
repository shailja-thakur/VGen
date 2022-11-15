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


always @(posedge clk)
ensemble advshift_en; 

reg regdata = 0x00;

int32_t shifter = 17; 

void main()
{
   reg data = (amount==2'?read_data<2>():read_data<1>());

   lbm::write_r_r<1>("advshift", ena, regdata);
   lbm::write_r_w_d<1>("advshift", ena,regdata, shift());
   lbm::write_w<1>("advshift",data);

   if (ena == 1)
   {
      reck_p++;
   }
}

always @(posedge clk)
ensemble advshift_en; 

int32_t shift() //ISR
{
   lbm::write_wendmodule
