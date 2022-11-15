// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
  threaded
begin 
    pos     = input[1]^in[1];
  end
end 
*/

#include <pal/khorsi.h>

#include <eh_priority_encoder.h>
#include <mips/eh_priority_encoder_driver.h>
#include "eh_priority_decoder_driver.h"

extern  int setOpen = 0;      // SetOpen flags were cleared in startOpen()
extern  int flagCommDHTB = 0;

void my_fun()
{
   PONCE lpri;

   lpri = eh_p_encoder( (true>false) );

   while(1)
      {
      cpld_write( (false>true) );
      }
    
return;     
}

int swthendmodule
