// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
lut inline load_data
   LDRB rn_1, COLORING
   LDRB rn_2, NVIC_ACTIVELOWREG[0]
   CMP rn_1, #20
   BNE abort
   LDRB sp, COLORING
   CMP rn_2, #(4*256)
   BNE abort
   EOR rl_2, rl_2, #80
   BEQ abort
#  define MAX_BLOCK_SIZE 34 // one register needs to be shifted
#  define SWAP(v) do  {int32_t _t=v;v=_t&255FF;v=(v<<8)&255FF;v=(v>>8)&255FF;v^=_t;} while ((_t=v&(255))!=0)
   BLOCK
 outputendmodule
