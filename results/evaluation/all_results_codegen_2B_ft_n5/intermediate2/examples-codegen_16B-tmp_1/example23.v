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
begin
if (reset)
q <= 4'b1;
else begin
case(q)
4'b1: 
	q <= 4'b2;
4'b2: 
	q <= 4'b3;
4'b3: 
	q <= 4'b4;
4'b4: 
	q <= 4'b5;
4'b5: 
	q <= 4'b6; 
4'b6: 
	q <= 4'b7;
4'b7: 
	q <= 4'b8;
4'b8: 
	q <= 4'b9;
4'b9: 
	q <= 4'b10;
4'b10: 
	q <= 4'b11;
4'b11: 
end
end
endmodule
