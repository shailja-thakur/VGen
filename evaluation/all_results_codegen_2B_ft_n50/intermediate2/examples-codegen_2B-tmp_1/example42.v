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
// once q reaches the end of the counter, set it to 0
always@(posedge clk, posedge reset)
begin
 if (reset)
 q <= 0 ;
 else if(q==13)
 q <= 0 ;
 else if(q==14)
 q <= q + 1 ;
end
endmodule
