// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low



wire aSign; 
wire bSign; 

// Assign the sign of the two inputs
assign aSign = a[7]; 
assign bSign = b[7];

wire bOverflow;
wire aOverflow;

// Determine the sign of the sum
wire sumSign;

or(sumSign,aSign,bSign);

// Instantiate four 2's complement adders
wire signed [5:0] aAddr0;
wire signed [5:0] aAddr1;
wire signed [5:0] bAddr0;
wire signed [5:0] bAddr1;

// Declare the output
wire signed [6:0] sum;
wire sumOverflow;

// Assign the first adders to their outputs
assign aAddr0 = (a[7:5] >endmodule
