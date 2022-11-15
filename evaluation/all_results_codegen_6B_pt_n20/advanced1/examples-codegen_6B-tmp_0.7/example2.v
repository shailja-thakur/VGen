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


//module test_simple_adder(input [7:0] a, 
//    input [7:0] b, 
//    output [7:0] s, 
//    output signed_overflow); 


// The following test verifies that the adder works when the inputs are positive. 
function test_simple_adder_positive(a, b, s, overflow)
{
    assign(s, a + b);
    assert(s == a + b);
}

// The following test verifies that the adder works when the inputs are negative. 
function test_simple_adder_negative(a, b, s, overflow)
{
    assign(s, a + b);
    assert(s == a + b);
}

// The following test verifies that the adder throws an exception when the inputs are zero. endmodule
