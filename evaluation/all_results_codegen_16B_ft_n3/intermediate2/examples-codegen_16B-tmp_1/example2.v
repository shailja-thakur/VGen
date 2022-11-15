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
always @( posedge clk or negedge reset)
begin
if(!reset) 
q <= 4'b0000;
// when clear==1, counter has reached 12, so 
// counter really has reached 0, 
// and q has been reset to 0.
else if(q == 12) 
q <= 4'b0000;
// q is allowed to go up to 12, so
// as soon as q reaches 12 on this run
// it outputs a 0, which will inactivate
// q 
else
q <= q + 4'b0001;
end 
endmodule
