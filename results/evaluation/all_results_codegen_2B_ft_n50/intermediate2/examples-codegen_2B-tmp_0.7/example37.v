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
always @(posedge clk) begin
 if(reset) begin // on reset, assign q to 1
 q<=1;
 end
 else if (q==12) begin // if q is 12, assign q to 1
 q<=1;
 end
 else if (q==0) begin // if q is 0, assign q to 1
 q<=1;
 end
 else begin // any other cases
 case(q)
 1:begin
 q<=q+1;
 end
 2:begin
 q<=q+1;
 end
 3:begin
 q<=q+1;
 end
 4:begin
 q<=q+1;
 end
 5:begin
 q<=q+1;
 end
 6:begin
 q<=q+1;
 end
 7:begin
 q<=q+1;
 end
 8:begin
endmodule
