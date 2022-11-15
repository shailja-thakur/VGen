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
always trigger reset in util.PPINSELHIDDEN #0
r2(reset)='0' within clk <= '1' when reset<='0' | reset='0' when reset<='1'
                   @reset ='2';
reg <=  (counter(clk,reset,q[2:0])>12);
endmodule
