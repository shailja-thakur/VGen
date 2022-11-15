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



signed_adder S[] = {
    top(0),
    top(1),
    top(2),
    top(3),
    top(4),
    top(5),
    top(6),
    top(7)
};

signed_adder *S[] = {
    new signed_adder(),
    new signed_adder(),
    new signed_adder(),
    new signed_adder(),
    new signed_adder(),
    new signed_adder(),
    new signed_adder(),
    new signed_adder()
};

void ckt_work() 
{ 
    for (uint i = 0; i <= 2; ++i) {
       clockticks S[i] = {0,0,0,0,0,0,0,0};

        for (uint j = 0; j < 8; ++j) {endmodule
