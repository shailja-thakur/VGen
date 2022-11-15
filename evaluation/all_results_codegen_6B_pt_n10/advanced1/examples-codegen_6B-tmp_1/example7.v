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


var availInner = 0b10_0000_0000_0000_1111_1001_0100;

var innerAddr = 0;



module cell_adder(
    input [7:0] n,
    input [31:0] m,
    output [7:0] s,
        output overflow
);

module mult(input [7:0] n,
    input [7:0] m,
    output [7:0] s1,
        output s2
);


module extended_adder(
    input [7:0] n1,
    input [7:0] n2,
        output s1_res
);

module added_adder(
    input [7:0] n1,
    input [7:0] n2,
        output s2_res
);

module copied_adder(
endmodule
