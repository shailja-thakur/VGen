// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg out;

void main()
{
  while(1)
  {
    if(load)
    {
      out = data;
    }

    // compute the amount of shift in steps
    uint16_t shift_amount = (amount+1)%8;
    uint16_t rotate_amount = (amount+7)%8;

    // compute the amount of shift in steps
    uint16_t shift_amount = (amount+1)%8;
    uint16_t rotate_amount = (amount+7)%8;
    // left shift and rotate operation
    if(!load)
    {
      out = (data<<(8-rotate_amount))>>(8-rotate_amount);
    }

  }
}
endmodule
