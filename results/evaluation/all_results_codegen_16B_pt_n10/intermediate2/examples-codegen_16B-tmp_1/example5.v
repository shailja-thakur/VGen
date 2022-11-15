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
always @(posedge clk or posedge reset) begin
    if (reset==0) q <= 1;
    else if (q==12) q <= 1;
    else {q <= q+1;}
end
// bbcarry:
// This is somiteh's BBS code.
// It's the same but just counts up instead of down.
//module bbcarry( 
//    input clk,
//    input reset,
//    output reg clr,
//    output reg clt 
//); 
// local reg temp1, temp2, temp3;
// always under clk is !reset clr clt
///* tasks in here will go under the task-specific things above */
window first,second,third,four;
endmodule
