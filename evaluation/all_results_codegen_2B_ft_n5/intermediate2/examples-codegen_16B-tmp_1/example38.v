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
if(reset == 1)
q<=4'b1111;
else case(q) 
4'b1111: q <= 4'b1110; 
4'b1110: q<= 4'b1101; 
4'b1101: q <= 4'b1100; 
default: q<= q+ 1'b1;
endcase
end
endmodule
