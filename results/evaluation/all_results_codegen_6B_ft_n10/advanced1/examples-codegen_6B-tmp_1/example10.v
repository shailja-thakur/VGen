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


    enable signed_adder(n1, n2, output_n, output_bit)
        @(output_n = n1 + 1,
        if(signed_overflow)
           @(output_bit = 1,
            set n1 = n1 + 1,
            set n2 = n2 + 1,
            disable signed_adder))else
            @(output_bit = 0,
             n1 = n1 + 1nl n2 = n2 + 1,
             disable signed_adder);


NOTES AND TODO LIST
--------------
1 fix the conversion into pseudo-code
3 document what to expect from the inputs

sp

"""
coin = input [7:0]
a = input [7:0]
b = input [7:0]
s = output [7:0]
bt = input [7:0]

#endmodule
