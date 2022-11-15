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


// main
begin
    input[0] = 0;
    input[1] = 0;
    input[2] = 0;
    input[3] = 0;
    input[4] = 0;
    input[5] = 0;
    input[6] = 0;
    input[7] = 0;
    output[0] = 0;
    output[1] = 0;
    output[2] = 0;
    output[3] = 0;
    output[4] = 0;
    output[5] = 0;
    output[6] = 0;
    output[7] = 0;
    overflow = 0;
    
    while (1) {
        if (a[7:0] < 0) {
            if (b[7:0] < 0) {
                if (a[7end
endmodule
