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
always @(posedge clk) 
begin 
if(reset) // set q to 1
q=1;
 
 
 else if (q == 4'b1111) // set counter to maximum value when q is filled to maximum
q=0;
 
else 
q=q+1; // otherwise, increment q
end
endmodule
