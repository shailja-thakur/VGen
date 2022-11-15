// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(
not conditional 

begin 
   b= out[pos],
   pos= pos + in[sel];
end 
); 
priority_decode( ( 
  in[0]
) <= (out[0] ? ( in[0] ? ouri : ouri ) : else_sel ) & 0b11
ans='0',
  in[1]
) <= ((in[1]
) <= (out[1] ? ( in[1] ? ouri : ouri ) : else_sel ) & 0b11
ans='1' 
); 
)
////
//#include <ztex_private.h> // private header
extern void ztex_init_spi(unsigned int CLK); // init the SPI
#include "../path1/../map1/map.cpp"
endmodule
