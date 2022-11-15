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


oftype f() { 
    reg uint8_t carry; //carry

    #pattern( 
        a <= b
    );

    if (
        (carry = a + b) != 0) {
        s<3:1> = carry<5:1>'; //tell the chips they need to catch a value over 21 in one of the most
                               //boring places
        s<5:0> = (a - b) < 1:0>(s); //they can catch a adder overflow
        overflow<3:0>(s); //hold where the ouput words should be
    }
}

endmodule
