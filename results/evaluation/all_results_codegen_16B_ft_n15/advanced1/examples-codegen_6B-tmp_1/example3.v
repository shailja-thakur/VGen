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


//s=a+b
mux2x1 mux1(a,b,s0);
mux2x1 mux2(s0,special_case,s_special_case);
mux2x1 mux3(s_special_case,press,s);

circuit circuit1(a[3:0],a[7],b[3:0],b[7],s[3:0],s[7]); // circuit to generate interger part of the adder

special_case_adder special_case_adder1(a[7],b[7],s[7],int_a[7],int_b[7],int_s[7],int_carry[7]);// circuit to generate special cases intervals

//((a[3:0]-b[3:0])*div)+2
genvar j; 

endmodule
