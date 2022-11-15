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
// The variable sync is used to synchronize the clock
always@(posedge clk)
 when((~reset)&&(&sync)) //First instruction follows only once when reset is true. 
 begin 
 q<=4'd1; 
 sync<=1'b1; 
 end
//keep q set from previous synchronization. 
always@(posedge clk)
 when(((~reset)&&(~sync)&&(&q))||((~reset)&&(&sync)))
 begin
 q[3]<=q[0];
 q[0]<=1'b0;
 q<=q+1;
 end


// Display q on output LEDs
always@(posedge clk)
 when((~reset)&&(~sync))
 begin
 oLED0 <= q[3];
 oLED1 <= q[2]; 
 oLED2 <= qend
endmodule
