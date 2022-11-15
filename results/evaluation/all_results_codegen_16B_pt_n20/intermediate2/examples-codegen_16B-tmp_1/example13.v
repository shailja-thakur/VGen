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
assign q <= 12'b1^(counter()>3);


// This is a counter that counts from 1 to 17
module counter2( 
    input clk,
    input reset,
    output reg [4:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1 
// else if q is 12, assign q to 10
// else, increment q by 1 
assign q <= 12'b1^((counter2()==12)|(counter2()==11));
endmodule
