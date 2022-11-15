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
 if (reset == 1) begin:resetcase
 q <= 1;
 end
 else begin:counter
 if (q == 4'd12)
 q <= 1
 else
 q <= q + 1
 end
 end
 endmodulemodule ibuf( 
 input clk, 
 input [15:0] iBus, 
 input stb,
 input we, 
 input [2:0] size, 
 input [2:0] cont,
 input [2:0] nextmode,
 input ibe,
 input ireq, 
 input ack,
 input [15:0] datain,
 input mode,
 output osta0,
 output osta1,
 output osta2,
 output [15:0] dataout,
 output ireq0, 
 output ireq1, 
 output ireq2,
endmodule
