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

 

wire signed [7:0] b_s; //stores the 8-bit b in a 2's complement form

//sets the most significant bit of b to 1 if b is negative
assign b_s = (b[7]) ? ~b + 1'b1 : b;

//adds the two numbers a and b
//sets the carry to 1 if a and b are signed and the operation is a subtraction
assign s = (a[7])? (a-b_s)+1'b1 : a+b_s;

assign overflow = ((a[7])&(b[7])&(~s[7]))|((~a[7])&(~b[7])&s[7]);



endmodule
