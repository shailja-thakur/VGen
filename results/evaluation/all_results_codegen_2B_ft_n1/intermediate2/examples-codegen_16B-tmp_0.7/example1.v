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
always @(posedge clk or posedge reset)
begin
if(reset)
q <= 4'b1;
else
begin
case(q)
4'b1: q <= 4'b10;
4'b10: q <= 4'b11;
4'b11: q <= 4'b100;
4'b100: q <= 4'b101;
4'b101: q <= 4'b1000;
4'b1000: q <= 4'b1001;
4'b1001: q <= 4'b10000;
4'b10000: q <= 4'b10001;
4'b10001: q <= 4'b100000;
4'b100000: q <= 4'b100001;
4'b100001: q <= 4'b100000;
default: q <= q + 4'b1;

end
end
endmodule
