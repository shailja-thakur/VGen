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
reg [4:0] qplus1;
always @(posedge clk) begin
    assign qplus1 = q+1;

if(reset)
begin
q=4'h1;
end
else if(qplus1==5'b10001)
    q=5'b100;
    else
    q=qplus1;
end
endmodule
