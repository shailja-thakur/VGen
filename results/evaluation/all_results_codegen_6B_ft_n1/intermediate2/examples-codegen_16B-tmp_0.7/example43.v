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
always @( posedge clk )
begin
if(reset)
q <= 1;
else
case (q)
4'b1xxx: q <= 4'b0000;
default: q <= q + 4'b0001;
endcase
end
endmodule
