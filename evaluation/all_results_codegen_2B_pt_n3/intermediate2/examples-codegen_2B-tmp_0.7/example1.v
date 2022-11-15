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
initial begin
    #5 q <= 1;
    #6 q <= 12;
    #7 q <= 1;
    #8 q <= 12;
    #9 q <= 1;
    #10 q <= 12;
    #11 q <= 1;
    #12 q <= 12;
    #13 q <= 1;
    #14 q <= 12;
    #15 q <= 1;
    #16 q <= 12;
    #17 q <= 1;
    #18 q <= 12;
    #19 q <= 1;
    #20 q <= 12;
    #21 q <= 1;
    #22 q <= 12;
    #23 q <= 1;
    #24 q <= 12;
    #25 q <= 1;
    #26 q <= 12;
    #27 q <= 1;
    #28 q <= 12;
    #29 q <=end
endmodule
