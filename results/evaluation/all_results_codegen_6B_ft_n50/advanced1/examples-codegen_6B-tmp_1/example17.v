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



//if both the numbers are signed and there second bit from the numbers is a signed overflow then make the sum as signed otherwise make it as unsigned
// if the second bit of a or b is high make the number as signed else make the sum unsigned

assign s[0] = (a[1:1]+b[1])^(a[2:2]+b[2]);
assign s[1] = (a[3:3]+b[3])^(a[4:4]+b[4]);
assign s[2] = (a[5:5]+b[5])^(a[6:6]+b[6]);
assign s[3] = (a[7:7]+b[7])^(a[0:0]+b[0]);
assign s[4] = (a[2:0]+b[2:0])^endmodule
