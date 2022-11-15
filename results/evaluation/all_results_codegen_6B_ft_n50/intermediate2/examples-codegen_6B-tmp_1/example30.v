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
case(reset) 
1'b1: q = 4'b0001;
q[12:11]==2'b01&&q[3:0]==4'b0001: q = q[3:0] + 1'b1;
q[12:11]==2'b10&&q[3:0]==4'b1000: q = q[3:0] + 1'b1;
q[12:11]==2'b11&&q[3:0]==4'b1001: q = q[3:0] + 1'b1;
endcase 
endmodule
