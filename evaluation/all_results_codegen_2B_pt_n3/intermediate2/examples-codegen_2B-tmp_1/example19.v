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
interinst counter::runt(
    value clk,
    value reset,
    value [3:0] q 
)
{
  q[3:0] = 1; 
  if((reset==1 && clk==1) || (clk == 1 && q==12) || (q==1 && clk==1)
    || (counter::q[0] == 11 && counter::q[1] == 10 && counter::q[2] == 9)
    || (clk == 10 && (counter::q[0] == 8 && counter::q[1] == 7 
                      && counter::q[2] == 6))
    || ((time >= 1) 
        && (((q[0] < 10) && ((counter::q[0] >= 10) 
                             && (counter::q[0] < 15)))
            || ((endmodule
