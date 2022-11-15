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
always@ (posedge clk or posedge reset)
begin
if(reset)
begin
q <= 1'b0;
end
else
begin
case (q)
// starting detection #0 in a 12 so 4th bit is '1'
4'b0111:
begin
q <= 4'b0001;
end
// detect q = 12, 4th bit is '0' resulting in q being incremented to 5
4'b0010:
begin
q <= q + 1'b1;
end
// detect q = '10010' (q is incremented and q[3] is '0'). The incremented to itself so 4th bit is now '0'
4'b0101:
begin
q <= q + 1'b1;
end
// detect q = '10011' (q remains equal to '10011'). The 4th bit is unchangedend
end
endmodule
