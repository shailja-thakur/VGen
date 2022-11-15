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


signed_adder_v1:
    assign  overflow {0}    //zero out the overflow bit, set overflow to 0
    assign  s  { a + b[7:0] }     
    assign  overflow { a == -128 || b == -128 ||
                      a == -127 || b == -127 ||
                      a == 128 || b == 128 ||
                      s == -128 || s == -127 ||
                      s == 128 || s == 129 }
endmodule
