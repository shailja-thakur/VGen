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


long signed_type = 255;
let signed_one = 128;

always @(posedge clk)

unsigned val_carry = 0;

unsigned test_a_sign = a < signed_one;

// carry is positive if either a is negative or b is negative 

if (test_a_sign == 0) {
    //Standards compliant
    //a completes the 16 bits of s
    //sum of inputs when carry overflows is handled 
}

signed_carry = b >= signed_one;
if (signed_carry) {
    sum = sum + a + b;
    signed_carry <== gt -> s = sum;
}

else {
    sum = sum + a;
    signed_carry <== lt -> s = sum;
}

#ifdef T_v1
    a_overflow <=endmodule
