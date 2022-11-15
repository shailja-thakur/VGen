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


int signed_adder_customer_example() {
    int _s = 0;

    int _a = 0;
    int _b = 0;

    _a = a[7]; // 0b11101101
    _b = b[7]; // 0b00011011
    // overflow
    //_a = ~a[7];
    //_b = ~b[7];

    _a = ~_a;
    _b = ~_b;

    // a[7] is 0b10110101
    // b[7] is 0b11111101

    _s = _a + _b;
    //_s = _a + _b;

    //_s = _a + _b;
    //_s = _a + _b;

    //_s = _a + _b;
    //_sendmodule
