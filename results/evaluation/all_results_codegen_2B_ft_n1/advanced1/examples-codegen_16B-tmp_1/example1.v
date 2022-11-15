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

 endmodulemodule multicycle(a,b,cin,x,ansout);
 input [7:0] a,b;
 input cin;
 output [7:0] x;
 output [1:0] ansout;
 
 reg of1,of2;
 reg [7:0] x1,x2;
 reg [1:0] ansout1,ansout2;
 
 initial x1 = 0;
 initial x2 = 0;

// assign ansout1 = 2'b00;

 // reg inquality, equality;
 reg [7:0] equalitycheck, inqualitycheck;

// always@(a) begin
// equality <= (a[7:4] == b[7:4]);
// end

// always@(a) equalytopelement = (equality) ? a[7:0]: 8'b00000000; // printsendmodule
