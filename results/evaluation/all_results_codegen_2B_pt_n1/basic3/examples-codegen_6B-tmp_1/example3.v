// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( falling edge, ^rst )
  rvk <= (in[0] | ~(sel ^ 0x1)) & 2;
always @ ( rising edge, ^(in[0] ^ sel) ) ||(in[0]^sel) & b
  output NV1 pulses low to indicate a 1 bit in PAL, NCA, or M sequence;
  NV1 <= NV1;
never @(posedge ~sei)                // TODO -> or ~!interrupt == 0 ? 
  V1 <= ((30 [unsigned(rvk)]<in[0] ^ sel) | 1);

always @(posedge ~rising, input ~pullup) 
  rep(p_count) 
  {
    if (0)
    {
      delay(t1);
      dout <= b ^ !(rvk or ~stendmodule
