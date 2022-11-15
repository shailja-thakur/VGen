// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(  sel==1 => pos = b; ) state_dec {16 bit pins}
always @(  sel==0 => b = pos; ) state_inc {16 bit pins}
begin

  pos//x bit = x
  if ( (is_on(in_pin)) => 
      pos<1=>pos+dec {4 bit pins}
      if ( (pos==1) and (is_on(in_pin)) => 
       pos<2=> pos+ dec {4 bit pins} pos=x pos+ dec {4 bit pins}
       if ( (pos==2) and (is_on(in_pin)) =>
          pos<3=> pos+ dec {4 bit pins} pos=det pos+ dec {4 bit pins}
          if ( (pos==3) and (is_on(in_pin)) =>
             pos<4=> posend
endmodule
