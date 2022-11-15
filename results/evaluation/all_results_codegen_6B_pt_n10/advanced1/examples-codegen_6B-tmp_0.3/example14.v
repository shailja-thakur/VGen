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


// The signed adder is implemented in the following function.
function signed_adder(a, b, s, overflow) {
    if (a[7] == b[7]) {
        s[7] = a[7] + b[7];
        if (s[7] > 127) {
            overflow[0] = 1;
        }
    } else {
        if (a[7] > b[7]) {
            s[7] = a[7] - b[7] + 128;
            if (s[7] < 128) {
                overflow[0] = 1;
            }
        } else {
            s[7] = b[7] - a[7] + 128;
            if (s[7] < 128) {
                overflow[0] = 1;
            }
        }
    endmodule
