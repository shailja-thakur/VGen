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
always @(posedge clk )
begin
case (reset)
0: q <= 4'b0000;
1: q <= 4'b0001;
2: q <= 4'b0010;
3: q <= 4'b0011;
4: q <= 4'b0100;
5: q <= 4'b0101; 
6: q <= 4'b0110;
7: q <= 4'b0111;
8: q <= 4'b1000;
9: q <= 4'b1001;
10: q <= 4'b1010; 
11: q <= 4'b1011;
12: q <= 4'b1100;
default: q <= 4'b0000; 
endcase
end 
endmodule
