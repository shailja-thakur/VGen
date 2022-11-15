// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign out = +(in[3] | in[2]+in[1]+in[0])<<2;
);
void main(){
    pos = 1;
    priority_encoder <= (1,1,0);
}

#include "registers/register_my-program.h"
const attribute MAXLINE=25;
/*
I/O pin mapping
printer:
gpio_1----out----p_62
------------------------------------------------------------------
vt320:
gpio_2----agc---p_63
dt|     DS|DS|DS|DS|DS|DS|DS|SP|DS|PC -----------FCR--------
---S---S---S---S---S---S---S---S------------------------------
          agc
  8xb   fs'|   fo'|rs   21   22   23   24   25   26   27   28endmodule
