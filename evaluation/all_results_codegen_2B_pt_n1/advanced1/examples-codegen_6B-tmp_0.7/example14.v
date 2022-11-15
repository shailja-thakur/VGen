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


#(define M(x) #x)
#(define M1(x) M(x))
#(define M2(x) M1(x))
#(define M3(x) M2(x))
#(define M4(x) M3(x))
#(define M5(x) M4(x))
#(define M6(x) M5(x))
#(define M7(x) M6(x))
#(define M8(x) M7(x))
#(define M9(x) M8(x))
#(define M10(x) M9(x))
#(define M11(x) M10(x))
#(define M12(x) M11(x))
#(define M13(x) M12(x))
#(define M14(xendmodule
