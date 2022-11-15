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
// update q on the negative edge of the clock according to the following cases:
// on button press, if q is less than 12, increment q by 1
// if it is equal to 12, assign q to 1
// if q is equal to 12, assign q to 4
// if q is 14 then reset to 1
always @ (posedge clk or posedge reset)
if(reset)
q <= 0;
else if(quset)
q <= {q[2], q[1], q[0]};
else
q <= q >> 1;
always @ (posedge clk or posedge reset)
if(reset)
q <= 0;
else if(q == 12)
q <= 1;
else
q <= q + 1;
endmodule
