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
behavior incdec = 
    t -> t; 
counter oneTo12 = 
    t > 0 | 32'h{101010110110101010} ->
    counter(clk,reset,q) 
          .after(incdec & t'[0]==1 & t'[1]==0) 
          .before(incdec & t'[0]==1 & t'[2]!=0) 
          .or(incdec & q'==12)
          .or(incdec & q'!=12)
          .and(clk==1 | reset==1 ); 

always @(posedge clk) 
  if (t_decode) q <= t_decode[4:0];
end

if (QMUX_reserved !== 0) q <= drop(QMUX_in &endmodule
