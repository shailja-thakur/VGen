// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always( counter.clk )
 begin
    if (reset) q <= 12'h0000;
    else if (q == 12'h0000) q <= 12'h0001;
    else q <= next_state( q );
 end
ends;

entity reg_check( reg00 reg01 reg02 reg03 );
instance( reg_check );
input clk, reset;
output reg00 g;
has_output reg01 g'out;
has_output reg02 g'out;
has_output reg03 g'out;
input clk, reset;
output reg [3:0] q;
instance( reg_check );
storage reg00 elems;
event end_inc;
entity ctrl_check( ctrl_reg1 boolean ctrl_clk, ctrl_reg2 boolean ctrl_post );
instance( ctrl_check );
inendmodule
