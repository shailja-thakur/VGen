// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) output reg [1:0] pos;
{
  pos = ~in[pos = in[0] | (in[1] << 1)];
};
)#*/

#include "priority_encoder_lmp459xx.dgs"

module priority_encoder_lmp409( 
input [2:0] in,
output reg [1:0] pos ); 

class priority_encoder_r820 : public r820r820z_1ss{
public:
  static char table[256];
  static uint8 priority_map[];
  static uint8 curP;
  char com, vid, svid, pid0svid, pid1svid, cputy;
  r820r820** proxy;
  uint32 index;
  bool directReading, directWriting, useBlightBit[2endmodule
