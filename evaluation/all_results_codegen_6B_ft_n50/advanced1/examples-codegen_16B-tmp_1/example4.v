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


initial begin 

$monitor("a[%b] + b[%b] + s[%b]",a,b,s);//print the sum of a and b after each change 

// repeat (10000000000) //repeat for debugging 

#1 assign a=10'd10; // sets a to 10
#1 assign b=10'd1; // sets b to 1
#1 assign s=10'd100; //sets the sum to 100 (a+b)

//@a as well to print the result 
end

//the bits {overflow,a,b} are all true 

always @a or @b or @s begin (overflow =1'b0 & (a>b)) or (a=b); end 

endmodule
