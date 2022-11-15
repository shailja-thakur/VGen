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
wire [23:0] q2;
initial begin
  clr_w <= 1;
  clr_w <= 2;
  clr_w <= 3;
  clr_w <= 4;
  clr_w <= 5;
  clr_w <= 6;
  clr_w <= 7;
  clr_w <= 8;
  clr_w <= 9;
  clr_w <= 10;
  clr_w <= 11;
  clr_w <= 12;
  when clk == 1'b1
    q2 <= 1'b1 / q;
  when clk == 1'b0
    clr_w <= 1'b0;
end
endmodule
