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


def check_s_overflow(a, b, s, overflow, o ,i, c_i):
    if(o):
       yield i 
       o=False
     
    sValidation = int(s)
    if(i == 0):return
    aValidation = int(a)
    bValidation = int(b)

    if(c_i == 1):
        if aValidation[-3 : -1] == bValidation[-3 : -1]:
            c_i = 0
            
    sValidation += aValidation[-3 : -1] + bValidation[-3 : -1]

def check_s_equals_0(a, b, s, overflow, o ,i, c_i):
    if(o):
       yield i 
       o=False
    endmodule
